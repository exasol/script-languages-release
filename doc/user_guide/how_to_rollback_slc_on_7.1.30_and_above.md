# How to roll back the Script-Languages-Container on Database 7.1.30

## Background

The updated Script-Languages-Container [8.1.0](https://github.com/exasol/script-languages-release/releases/tag/8.1.0) in Database v7.1.30. Release 8.1.0 included a major update for the Python and R languages compared to 6.0.0. For R we detected some performance drops in special circumstances. Also, some R packages were removed.
In case, customers want to use the previous Script-Languages-Container [6.0.0](https://github.com/exasol/script-languages-release/releases/tag/6.0.0), they can follow the steps described in this document.

## Steps

### Upload the Script-Languages-Container v6.0.0 from [Github](https://github.com/exasol/script-languages-release/releases/download/6.0.0/standard-EXASOL-7.1.0_release.tar.gz) to BucketFS 

See https://docs.exasol.com/db/latest/database_concepts/udf_scripts/adding_new_packages_script_languages.htm for details about how to upload a Script-Languages-Container to BucketFS.

### Activate the Script-Languages-Container v6.0.0

In case, only R UDF's shall be used with the Script-Languages-Container v6.0.0, run
```sql
ALTER SYSTEM SET SCRIPT_LANGUAGES='PYTHON3=builtin_python3 JAVA=builtin_java R=localzmq+protobuf:///bfsdefault/<bucket>/<path_in_bucket>/<container_name>?lang=r#/buckets/bfsdefault/<bucket>/<path_in_bucket>/<container_name>/exaudf/exaudfclient_py3';
```

In case, all UDF's shall run with Script-Languages-Container v6.0.0, run
```sql
ALTER SYSTEM SET SCRIPT_LANGUAGES='PYTHON3=localzmq+protobuf:///bfsdefault/<bucket>/<path_in_bucket>/<container_name>?lang=python#/buckets/bfsdefault/<bucket>/<path_in_bucket>/<container_name>/exaudf/exaudfclient_py3 JAVA=localzmq+protobuf:///bfsdefault/<bucket>/<path_in_bucket>/<container_name>?lang=java#/buckets/bfsdefault/<bucket>/<path_in_bucket>/<container_name>/exaudf/exaudfclient_py3 R=localzmq+protobuf:///bfsdefault/<bucket>/<path_in_bucket>/<container_name>?lang=r#/buckets/bfsdefault/<bucket>/<path_in_bucket>/<container_name>/exaudf/exaudfclient_py3';
```

### Convenience Script

We provide a simple [script](resources/install_slc_v6.0.0_on_db.sh) for Linux (probably also runs only MacOsX) which uploads the container to BucketFS.
