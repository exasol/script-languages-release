with
num_of_pairs as(
    SELECT
        p.system_value
        , length(p.system_value)-length(replace(p.system_value, '=')) as num_of_pairs
    FROM
        exa_parameters p
    WHERE
        1=1
        and p.parameter_name in ('SCRIPT_LANGUAGES')
)
, lang_pairs as(
    SELECT
        regexp_substr(nop.system_value, '[^ =]+=[^ ]+', 1, level) as pair_val
        , nop.system_value
    FROM
        num_of_pairs nop
    connect by
        level <= nop.num_of_pairs
)
, parsed as(
    SELECT
        lp.*
        , instr(lp.pair_val, '=') as eq_pos
        , substr(lp.pair_val, 1, local.eq_pos-1) as alias_name
        , substr(lp.pair_val, local.eq_pos + 1, length(lp.pair_val) - local.eq_pos) as alias_content
    FROM
        lang_pairs lp
)
select
    case
        when count(*) = 0 then 'You are not using the pre-shipped R in UDFs.'
        else 'You have '||to_char(count(*))||' UDFs using the pre-shipped R:

' || GROUP_CONCAT('"'||s.script_schema||'"."'||s.script_name||'"' separator '
')
    end as check_results
FROM
    parsed p
        join exa_dba_scripts s
        on upper(p.alias_name)=s.script_language
WHERE
    1=1
    and p.alias_content = 'builtin_r'
;
