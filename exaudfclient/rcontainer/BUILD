package(default_visibility = ["//visibility:public"])

genrule(
    name = "exascript_r_tmp_cc",
    cmd = """
      mkdir -p build_exascript_r_tmp_cc/exaudflib
      cp "$(location //base/exaudflib:swig/script_data_transfer_objects_wrapper.h)" "$(location //base/exaudflib:exascript.i)" build_exascript_r_tmp_cc/exaudflib
      cd build_exascript_r_tmp_cc
      swig -v -O -DEXTERNAL_PROCESS -Wall -c++ -r -addextern -module exascript_r -o "../$(location exascript_r_tmp.cc)" exaudflib/exascript.i
    """,
    outs = ["exascript_r_tmp.cc","exascript_r.R"],
    srcs = ["//base/exaudflib:exascript.i","//base/exaudflib:swig/script_data_transfer_objects_wrapper.h"]
)

genrule(
    name = "exascript_r_tmp_h",
    cmd = """
        mkdir build_exascript_r_tmp_h
        cp "$(location //base/exaudflib:swig/script_data_transfer_objects_wrapper.h)" "$(location //base/exaudflib:exascript.i)" build_exascript_r_tmp_h
        cp "$(location exascript_r_tmp.cc)"  "$(location exascript_r.R)" build_exascript_r_tmp_h
        cd build_exascript_r_tmp_h
        swig -DEXTERNAL_PROCESS -c++ -r -external-runtime "../$(location exascript_r_tmp.h)"
      """,
    outs = ["exascript_r_tmp.h"],
    srcs = ["//base/exaudflib:exascript.i","//base/exaudflib:swig/script_data_transfer_objects_wrapper.h", ":exascript_r_tmp.cc", ":exascript_r.R"]
)

genrule(
    name = "exascript_r_int",
    cmd = """
            cp $(locations :exascript_r_tmp_cc) $(location exascript_r_wrap.R) $(location exascript_r_preset.R) . && 
            python3 $(location //base:build_integrated.py) "$(location exascript_r_int.h)" exascript_r.R"" "exascript_r_wrap.R" "exascript_r_preset.R"
        """,
    outs = ["exascript_r_int.h"],
    srcs = ["exascript_r_wrap.R", "exascript_r_preset.R", ":exascript_r_tmp_cc"],
    tools = ["//base:build_integrated.py"]
)

genrule(
    name = "filter_swig_code_exascript_r_h",
    cmd = 'python3 $(location //base:filter_swig_code.py) "$@" "$<"',
    outs = ["exascript_r.h"],
    srcs = [":exascript_r_tmp_h"],
    tools = ["//base:filter_swig_code.py"]
)

genrule(
    name = "filter_swig_code_exascript_r_cc",
    cmd = """
            cp $(locations :exascript_r_tmp_cc) .
            python3 $(location //base:filter_swig_code.py) "$@" "exascript_r_tmp.cc"
            """,
    outs = ["exascript_r.cc"],
    srcs = [":exascript_r_tmp_cc"],
    tools = ["//base:filter_swig_code.py"]
)

config_setting(
    name = "r-unroll-loops",
    define_values = {
        "r-unroll-loops": "true",
    },
)

optimize_copts=select({
        ":r-unroll-loops": ["-funroll-loops"],
        "//conditions:default": []
    })

cc_library(
    name = "exascript_r",
    srcs = [":filter_swig_code_exascript_r_cc",":filter_swig_code_exascript_r_h"],
    hdrs = [":filter_swig_code_exascript_r_h"],
    copts = ["-DENABLE_R_VM"]+optimize_copts,
    deps = ["@R_linux//:r-lib","//base/exaudflib:exaudflib-deps","//base/exaudflib:header"],
    alwayslink = True,
)

cc_library(
    name = "rcontainer",
    srcs = ["rcontainer.cc","rcontainer.h"],
    copts = ["-DENABLE_R_VM"]+optimize_copts,
    include_prefix = ".",
    data = ["exascript_r_wrap.R", "exascript_r_preset.R"], #TODO do we need this, because build_integreted
    hdrs = ["filter_swig_code_exascript_r_h","exascript_r_int", "rcontainer.h"],
    deps = ["@R_linux//:r-lib",":exascript_r","//base/exaudflib:header"],
    alwayslink = True,
)
