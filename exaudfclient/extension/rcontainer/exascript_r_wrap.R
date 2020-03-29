# Wrapper arround the "run" function

"$.EXAUDFContext" <- function(value, name) {
    dat <- value[[name]]
    col <- attr(dat, "COLUMN")
    if (is.null(col)){
        return(dat)
    }else{
        return(dat())
    }
}

INTERNAL_RUN_WRAPPER_DATA__ <- list()
INTERNAL_RUN_WRAPPER_DATA_RAW__ <- INTERNAL_RUN_WRAPPER_DATA__
INTERNAL_RUN_WRAPPER_DATA_LEN__ <- 0
INTERNAL_RUN_WRAPPER_BODY__ <- function(meta, inp, out) {
    create_check <- function(ce, tbl) {
        function(error_code,f, ...) { 
            v <- f(tbl, ...); 
            msg <- ce(tbl); 
            if (!is.null(msg)) {
                stop(paste(error_code,": ",msg,sep="")); 
            }
            return(v) 
        }
    }
    em <- create_check(Metadata_checkException, meta)
    ei <- create_check(TableIterator_checkException, inp)
    eo <- create_check(ResultHandler_checkException, out)
    context <- list(); class(context) <- "EXAUDFContext"
    getcols <- list()
    inpcols <- em("F-UDF.CL.SL.R-1025",Metadata_inputColumnCount)
    outcols <- em("F-UDF.CL.SL.R-1026",Metadata_outputColumnCount)
    # IMPORTANT -> context and getcols must be filled with colreadfuns beginning
    #              with empty lists, because column indexes need to begin with 1
    if (inpcols > 0)
        lapply(0:(inpcols-1), function (col) {
            coltyp <- em("F-UDF.CL.SL.R-1027",Metadata_inputColumnType, col)
            colnam <- em("F-UDF.CL.SL.R-1028",Metadata_inputColumnName, col)
            colreadfun <- 
                if (coltyp == "DOUBLE") identity
                else if (coltyp == "INT32") identity
                else if (coltyp == "INT64") identity
                else if (coltyp == "NUMERIC") identity
                else if (coltyp == "TIMESTAMP") function (v) strptime(v, "%Y-%m-%d %H:%M:%OS")
                else if (coltyp == "DATE") function (v) strptime(v, "%Y-%m-%d")
                else if (coltyp == "STRING") identity
                else if (coltyp == "BOOLEAN") identity
                else stop(paste("F-UDF.CL.SL.R-1029: Unsupported column type:", colnam, coltyp, col))
            readfun <- list(function() INTERNAL_RUN_WRAPPER_DATA__[[col+1]])
            attr(readfun[[1]], "COLUMN") <- TRUE
            context[colnam] <<- readfun
            getcols[colnam] <<- list(colreadfun) })
    nextdata <- function(rownumber) {
      if (length(rownumber) != 1)
          stop("F-UDF.CL.SL.R-1030: rownumber argument to next function schould be NA or one integer >= 0")
      INTERNAL_RUN_WRAPPER_DATA_RAW__ <<- .Call("RVM_next_block", inp, as.integer(rownumber), INTERNAL_RUN_WRAPPER_DATA_RAW__, as.integer(INTERNAL_RUN_WRAPPER_DATA_LEN__))
      INTERNAL_RUN_WRAPPER_DATA_LEN__ <<- as.integer(rownumber)
      msg <- TableIterator_checkException(inp)
      if (!is.null(msg)) stop(paste("F-UDF.CL.SL.R-1031:",msg))
      if (!is.null(INTERNAL_RUN_WRAPPER_DATA_RAW__))
        INTERNAL_RUN_WRAPPER_DATA__ <<- mapply(function(a, b) a(b), getcols, INTERNAL_RUN_WRAPPER_DATA_RAW__, SIMPLIFY = FALSE)
      NULL
    }
    nextfun <- function(rowsnumber = 0) {      
      if (ei("F-UDF.CL.SL.R-1032",TableIterator_eot)) {
        FALSE
      } else if (!is.na(rowsnumber) && rowsnumber == 0) {
        v <- ei("F-UDF.CL.SL.R-1033",TableIterator__next)
        if (v) nextdata(0)
        v
      } else {
        nextdata(rowsnumber)
        TRUE
      }
    }
    context["size"] = list(function() ei("F-UDF.CL.SL.R-1034",TableIterator_rowsInGroup))
    emitcols <- list()
    lapply(0:(outcols-1), function (col) {
        coltyp <- em("F-UDF.CL.SL.R-1035",Metadata_outputColumnType, col)
        emitcols[col+1] <<- list(
         if (coltyp == "DOUBLE") function(val) {
           if(is.character(val))
             stop(paste("F-UDF.CL.SL.R-1037: Value for column", em("F-UDF.CL.SL.R-1036",Metadata_outputColumnName, col), "is not of type double"));
           as.double(val)
         } else if (coltyp == "INT32") function(val) {
           if(is.character(val))
             stop(paste("F-UDF.CL.SL.R-1039: Value for column", em("F-UDF.CL.SL.R-1038",Metadata_outputColumnName, col), "is not of type integer"));
           as.integer(val)
         } else if (coltyp == "INT64") function(val) {
           as.double(val)
         } else if (coltyp == "NUMERIC") function(val) {
           as.character(val)
         } else if (coltyp == "TIMESTAMP") function(val) {
           strftime(val, "%Y-%m-%d %H:%M:%OS3")
         } else if (coltyp == "DATE") function(val) {
           strftime(val, "%Y-%m-%d")
         } else if (coltyp == "STRING") function(val) {
           if(is.numeric(val))
             stop(paste("F-UDF.CL.SL.R-1041: Value for column", em("F-UDF.CL.SL.R-1040",Metadata_outputColumnName, col), "is not of type character"));
           as.character(val)
         } else if (coltyp == "BOOLEAN") function(val) {
           if(is.character(val) || is.numeric(val))
             stop(paste("F-UDF.CL.SL.R-1043: Value for column", em("F-UDF.CL.SL.R-1042",Metadata_outputColumnName, col), "is not of type logical"));
           as.logical(val)
         })
      })
    emitfun <- function(...) {
      data <- list(...)
      if (is.null(data[[1]]))
        data <- list(NA)
      .Call("RVM_emit_block", out, mapply(function (a, b) a(b), emitcols, data, SIMPLIFY = FALSE))
      msg <- ResultHandler_checkException(out)
      if (!is.null(msg)) stop(paste("F-UDF.CL.SL.R-1044",msg))
    }
    nextdata(0) # read first row
    context["next"] = list(nextfun)
    context["next_row"] = list(nextfun)
    if (em("F-UDF.CL.SL.R-1045",Metadata_inputType) == "EXACTLY_ONCE") {
        if (em("F-UDF.CL.SL.R-1046",Metadata_outputType) == "EXACTLY_ONCE") {
            context["emit"] = list(emitfun)
            while(T) {
                data <- run(context)
                if (!is.null(data)) {
                  emitfun(data)
                  if (!nextfun()) break
                } else break;
            }
            eo("F-UDF.CL.SL.R-1047",ResultHandler_flush)
        } else if (em("F-UDF.CL.SL.R-1048",Metadata_outputType) == "MULTIPLE") {
            context["emit"] = list(emitfun)
            while(T) {
                run(context)
                if (!nextfun()) break
            }
            eo("F-UDF.CL.SL.R-1049",ResultHandler_flush)
        } else stop("F-UDF.CL.SL.R-1050: Unknown output mode type")
    } else if (em("F-UDF.CL.SL.R-1051",Metadata_inputType) == "MULTIPLE") {
        context["reset"] = list(function() { ei("F-UDF.CL.SL.R-1052",TableIterator_reset); nextdata(0); })
        if (em("F-UDF.CL.SL.R-1053",Metadata_outputType) == "EXACTLY_ONCE") {
            data <- run(context)
            if (!is.null(data)) emitfun(data)
            else emitfun(NA)
            eo("F-UDF.CL.SL.R-1054",ResultHandler_flush)
        } else if (em("F-UDF.CL.SL.R-1055",Metadata_outputType) == "MULTIPLE") {
            context["emit"] = list(emitfun)
            run(context)
            eo("F-UDF.CL.SL.R-1056",ResultHandler_flush)
        } else stop(paste("F-UDF.CL.SL.R-1057: Unknown output mode type:", em("F-UDF.CL.SL.R-1058",Metadata_outputType)))
    } else stop(paste("F-UDF.CL.SL.R-1059: Unknown input mode type:", em("F-UDF.CL.SL.R-1060",Metadata_inputType)))
}

INTERNAL_RUN_WRAPPER__ <- function() {
    if (is.null(INTERNAL_INP_OBJECT__)) {
        INTERNAL_INP_OBJECT__ <<- TableIterator()
        INTERNAL_OUT_OBJECT__ <<- ResultHandler(INTERNAL_INP_OBJECT__)
    } else {            
        INTERNAL_INP_OBJECT__$reinitialize()
        INTERNAL_OUT_OBJECT__$reinitialize()
    }
    tryCatch(INTERNAL_RUN_WRAPPER_BODY__(INTERNAL_META_OBJECT__, INTERNAL_INP_OBJECT__, INTERNAL_OUT_OBJECT__),
             finally = { INTERNAL_OUT_OBJECT__$flush() })
}

INTERNAL_CLEANUP_WRAPPER__ <- function() {
    cleanup <- tryCatch(cleanup, error = function(e) NA)
    if (!is.na(list(cleanup)))
        cleanup()
}

INTERNAL_SINGLE_CALL_WRAPPER__ <- function(name, argDTO=NA) {
    if (is.na(argDTO)) {
        return(do.call(name,list()))
    } else {
       return(do.call(name,list(argDTO)))
    }
}

# vim:ft=r:
