# Use R3.6 UDF's with Exasol 7.1.30 and later

## Background

The Script-Languages-Container was updated to version [8.1.0](https://github.com/exasol/script-languages-release/releases/tag/8.1.0) in Database v7.1.30. Release 8.1.0 included a major update for the Python and R languages compared to 6.0.0. For R we detected some performance drops in special circumstances: Newer versions of R have a higher memory consumption which has direct impact on the execution of UDF's in parallel. 
Also, some R packages were removed. 
In case, customers want to use the previous Script-Languages-Container [6.0.0](https://github.com/exasol/script-languages-release/releases/tag/6.0.0), they can follow the steps described in this document.

⚠️These script language containers are provided as is and are not maintained anymore.

## Pre-update Check

ⓘ This script will detect most occurrences of R and Python2 usage in UDFs. We cannot guarantee that all occurrences are detected.

See [pre_update_check.sql](./resources/pre_update_check.sql)


## Update From 7.1.x To 7.1.30 or newer

To use Python 2.7 or R3.4 with UDFs after updating from Exasol 7.1.x to Exasol 7.1.30 or later you need to change the SCRIPT_LANGUAGES parameter to activate a script language container that supports Python 2.7/R3.4. The new parameter value can be generated automatically or manually.

### Automatic generation of the new SCRIPT_LANGUAGES parameter value

1. Get the current value of the SCRIPT_LANGUAGES parameter and save the output in case you need to restore it.

See [get_original_script_languages_parameter.sql](./resources/get_original_script_languages_parameter.sql)

Expected result for an Exasol 7.1.20 database or later (the example shows the default values - actual values may be different if the parameter has been changed):
```sql
ALTER SYSTEM SET SCRIPT_LANGUAGES='R=builtin_r JAVA=builtin_java PYTHON3=builtin_python3';
```
Expected result for an Exasol 7.1.19 database or lower (the example shows the default values - actual values may be different if the parameter has been changed):
```sql
ALTER SYSTEM SET SCRIPT_LANGUAGES='PYTHON=builtin_python R=builtin_r JAVA=builtin_java PYTHON3=builtin_python3';
```

2. Run the following query before updating to 7.1.30:

See [construct_alter_system_command_before_update.sql](./resources/construct_alter_system_command_before_update.sql)

3. Run the ALTER SYSTEM statement returned by the query. For example:

```sql
ALTER SYSTEM SET SCRIPT_LANGUAGES='JAVA=builtin_java PYTHON3=builtin_python3 R=localzmq+protobuf:///bfsdefault/default/EXAClusterOS/ScriptLanguages-standard-EXASOL-7.1.0-slc-v6.0.0-VYP23K36/?lang=r#/buckets/bfsdefault/default/EXAClusterOS/ScriptLanguages-standard-EXASOL-7.1.0-slc-v6.0.0-VYP23K36/exaudf/exaudfclient_py3';
```
ⓘ We recommend that you test parameter changes using ALTER SESSION before making system-wide changes using ALTER SYSTEM.

### Manual generation of the new SCRIPT_LANGUAGES parameter value

1. Get the current value of the SCRIPT_LANGUAGES parameter and save the output in case you need to restore it.

See [get_original_script_languages_parameter.sql](./resources/get_original_script_languages_parameter.sql)

2. Using the output from the query in the previous step, replace:
- `builtin_r` with `localzmq+protobuf:///bfsdefault/default/EXAClusterOS/<container_name>/?lang=r#/buckets/bfsdefault/default/EXAClusterOS/<container_name>/exaudf/exaudfclient_py3`
- `builtin_python` with `localzmq+protobuf:///bfsdefault/default/EXAClusterOS/<container_name>/?lang=r#/buckets/bfsdefault/default/EXAClusterOS/<container_name>/exaudf/exaudfclient` (in case you need Python2 in UDF's)

Replace <container_name> in this string with the following value depending on which version you are upgrading from:

| Exasol DB Min Version        | Exasol DB Max Version            | Container Name                                           |
|:-----------------------------|:---------------------------------|:---------------------------------------------------------|
|  7.1.20                   | 7.1.29	                       |ScriptLanguages-standard-EXASOL-7.1.0-slc-v6.0.0-VYP23K36 |
|  7.1.7                    | 7.1.19	                       |ScriptLanguages-standard-EXASOL-7.1.0-slc-v4.0.0-CM4RWW6R |
|  7.1.0                    | 7.1.6	                           |ScriptLanguages-release-standard-exasol-7.1.0-1.1.0       |

ⓘ If you already had updated the `SCRIPT_LANGUAGES` parameter during a previous update, following steps in https://docs.exasol.com/db/7.1/database_concepts/udf_scripts/python2_extended_use.htm, leave the value for Python2 unchanged.

3. Run the updated ALTER SYSTEM statement after changing the values as described in the previous step. For example:
```sql
ALTER SYSTEM SET SCRIPT_LANGUAGES='JAVA=builtin_java PYTHON3=builtin_python3 R=localzmq+protobuf:///bfsdefault/default/EXAClusterOS/ScriptLanguages-standard-EXASOL-7.1.0-slc-v6.0.0-VYP23K36/?lang=r#/buckets/bfsdefault/default/EXAClusterOS/ScriptLanguages-standard-EXASOL-7.1.0-slc-v6.0.0-VYP23K36/exaudf/exaudfclient_py3 PYTHON=localzmq+protobuf:///bfsdefault/default/EXAClusterOS/ScriptLanguages-standard-EXASOL-7.1.0-slc-v4.0.0-CM4RWW6R/?lang=python#/buckets/bfsdefault/default/EXAClusterOS/ScriptLanguages-standard-EXASOL-7.1.0-slc-v4.0.0-CM4RWW6R/exaudf/exaudfclient';
```
ⓘ We recommend that you test parameter changes using ALTER SESSION before making system-wide changes using ALTER SYSTEM.
