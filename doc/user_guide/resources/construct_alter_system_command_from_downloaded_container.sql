with minor_version as (
  select CAST(SUBSTR(PARAM_VALUE,INSTR(PARAM_VALUE,'.',-1,1)+1) as INT) as minor_version
  from  EXA_METADATA
  where PARAM_NAME='databaseProductVersion' and PARAM_VALUE like '7.1%'
),
container_path as (
  select '<bucketfs_name>/<bucket_name>/<path_in_bucket>/<container_name>' as container_path
),
num_of_pairs as(
  SELECT
    p.system_value,
    length(p.system_value)-length(replace(p.system_value, '=')) as num_of_pairs
  FROM exa_parameters p
  WHERE p.parameter_name in ('SCRIPT_LANGUAGES')
),
lang_pairs as(
  SELECT
    regexp_substr(nop.system_value, '[^ =]+=[^ ]+', 1, level) as pair_val,
    nop.system_value
  FROM num_of_pairs nop
  connect by level <= nop.num_of_pairs
),
parsed_lang_pairs as(
  SELECT
    instr(lp.pair_val, '=') as eq_pos,
    substr(lp.pair_val, 1, local.eq_pos-1) as alias_name,
    substr(lp.pair_val, local.eq_pos + 1, length(lp.pair_val) - local.eq_pos) as alias_content
  FROM lang_pairs lp
),
new_alias_content as (
  select
    alias_name,
    'localzmq+protobuf:///' || container_path || '/?lang=r#/buckets/' || container_path || '/exaudf/exaudfclient_py3'  as alias_content
  from container_path
  join parsed_lang_pairs on true
  where alias_content='builtin_r'
  union all
  select
    alias_name,
    alias_content
  from parsed_lang_pairs
  where alias_content<>'builtin_r'
),
new_system_value as (
  select GROUP_CONCAT(alias_name || '=' || alias_content SEPARATOR ' ') as new_system_value
  from new_alias_content
)
select 'ALTER SYSTEM SET SCRIPT_LANGUAGES=''' || new_system_value || ''';' as command_text from new_system_value;