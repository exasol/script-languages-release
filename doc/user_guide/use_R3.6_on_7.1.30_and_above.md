# Use R3.6 UDF's with Exasol 7.1.30 and later

## Background

The Script-Languages-Container was updated to version [8.1.0](https://github.com/exasol/script-languages-release/releases/tag/8.1.0) in Database v7.1.30. Release 8.1.0 included a major update for the Python and R languages compared to 6.0.0. For R we detected some performance drops in special circumstances. Also, some R packages were removed.
In case, customers want to use the previous Script-Languages-Container [6.0.0](https://github.com/exasol/script-languages-release/releases/tag/6.0.0), they can follow the steps described in this document.

⚠️These script language containers are provided as is and are not maintained anymore.

## Pre-update Check

ⓘ This script will detect most occurences of R usage in UDFs. We cannot guarantee that all occurences are detected.

See [pre_update_check.sql](./resources/pre_update_check.sql)


## Update From 7.1.x To 7.1.30 or newer

After the Script-Languages-Contaier was installed in BucketFS, it necessary to change the SCRIPT_LANGUAGES parameter to activate a script language container that supports R 3.6. The new parameter value can be generated automatically or manually.

### Automatic generation of the new SCRIPT_LANGUAGES parameter value

1. Get the current value of the SCRIPT_LANGUAGES parameter and save the output in case you need to restore it.

See [get_original_script_languages_parameter.sql](./resources/get_original_script_languages_parameter.sql)

Expected result (the example shows the default values - actual values may be different if the parameter has been changed):
```sql
ALTER SYSTEM SET SCRIPT_LANGUAGES='R=builtin_r JAVA=builtin_java PYTHON3=builtin_python3';
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

2. Using the output from the query in the previous step, replace builtin_python with `localzmq+protobuf:///bfsdefault/default/EXAClusterOS/<container_name>/?lang=r#/buckets/bfsdefault/default/EXAClusterOS/<container_name>/exaudf/exaudfclient_py3`

Replace <container_name> in this string with the following value depending on which version you are upgrading from:

| Exasol DB Min Version        | Exasol DB Max Version            | Container Name                                           |
|:-----------------------------|:---------------------------------|:---------------------------------------------------------|
|  7.1.20                   | 7.1.29	                       |ScriptLanguages-standard-EXASOL-7.1.0-slc-v6.0.0-VYP23K36 |
|  7.1.7                    | 7.1.19	                       |ScriptLanguages-standard-EXASOL-7.1.0-slc-v4.0.0-CM4RWW6R |
|  7.1.0                    | 7.1.6	                           |ScriptLanguages-release-standard-exasol-7.1.0-1.1.0       |

3. Run the updated ALTER SYSTEM statement after changing the values as described in the previous step. For example:
```sql
ALTER SYSTEM SET SCRIPT_LANGUAGES='JAVA=builtin_java PYTHON3=builtin_python3 R=localzmq+protobuf:///bfsdefault/default/EXAClusterOS/ScriptLanguages-standard-EXASOL-7.1.0-slc-v6.0.0-VYP23K36/?lang=r#/buckets/bfsdefault/default/EXAClusterOS/ScriptLanguages-standard-EXASOL-7.1.0-slc-v6.0.0-VYP23K36/exaudf/exaudfclient_py3';
```
ⓘ We recommend that you test parameter changes using ALTER SESSION before making system-wide changes using ALTER SYSTEM.

## Fresh Install Of 7.1 Or Update From 7.0

If you do a fresh install of the latest 7.1 release, or if you update from Exasol 7.0, you need to install a pre-built script language container from GitHub and then update the SCRIPT_LANGUAGE parameter to point to the container.

For more details of how to install a script language container, see [Adding New Packages to Existing Script Languages](https://docs.exasol.com/db/7.1/database_concepts/udf_scripts/adding_new_packages_script_languages.htm).

Under Linux/MacOsX, for steps 1-3,  you can use the following script to download the container from Github and upload it to BucketFS: [install_slc_v6.0.0_on_db.sh](./resource/install_slc_v6.0.0_on_db.sh) 

1. Download the latest version of the container that contained R 3.6:

Container: https://github.com/exasol/script-languages-release/releases/download/6.0.0/standard-EXASOL-7.1.0_release.tar.gz

Checksum:https://github.com/exasol/script-languages-release/releases/download/6.0.0/standard-EXASOL-7.1.0_release.tar.gz.sha512sum

2. Control the checksum of the downloaded container.

3. Upload the container to BucketFS.

4. Run the following query to generate the ALTER SYSTEM command to update the SCRIPT_LANGUAGES parameter.

Replace the variables <bucketfs_name>, <bucket_name>, <path_in_bucket>, and <container_name> in the query to match the path to the uploaded container in BucketFS.

See [construct_alter_system_command_from_downloaded_container.sql](./resources/construct_alter_system_command_from_downloaded_container.sql)

5. Run the ALTER SYSTEM statement returned by the query.

ⓘ We recommend that you test parameter changes using ALTER SESSION before making system-wide changes using ALTER SYSTEM.