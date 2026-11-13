# User Journey: Adding package SQLGlot

`exaslct` uses [SLC-PM](https://github.com/exasol/script-languages-package-management) to install different packages from various sources in a unified way incl. conda, apt, and PyPI.

SLC-PM allows you to specify all dependencies in a single file `packages.yml` located in the directory of a flavor.

Each file `packages.yml` of the default flavors already contains a customization section.

If you want to customize a flavor, consider forking the Git repository or simply copying the flavor directory to a place for modifying and later potentially also making a backup.

Let's say you want to create a custom SLC based on the Python 3.12 template, but including the additional Pip package [sqlglot](https://sqlglot.com/sqlglot/dialects/exasol.html) in the latest version.

On PyPI you found out that the latest version is `30.31.0`, so you decide to specify any version equal or higher than major version `30`.

1. Edit file `packages.yml`, e.g. `flavors/template-Exasol-all-python-3.12/packages.yml`
2. At the end you find section `flavor_customization`
3. Below `phases/name["install_pip_packages"]/pip/packages` you can add `sqlglot`

```yaml
- name: flavor_customization
  phases:
  # ...
  - name: install_pip_packages
    pip:
      packages:
         - name: sqlglot
           version: ">=30"
```

### Quoting

Some characters are special in YAML. Also numbers with a decimal point are interpreted as float values which usually conflict when specifying semantic version, e.g. `30.31`.

In all these cases, to be safe, ensure the value is quoted as a string:

| Name                        | Character | As string |
|-----------------------------|-----------|-----------|
| Colon                       | `:`       | `":"`     |
| Asterisk                    | `*`       | `"*"`     |
| Greater-than                | `>`       | `">"`     |
| Numbers with decimal point  | `30.31`   | `"30.31"` |
| Synonyms for boolean values | `on`      | `"on"`    |

### Building and Deploying the SLC

The following command builds and deploys a custom SLC:
``

```shell
poetry run exaslct deploy \
       --flavor-path flavors/template-Exasol-all-python-3.12 \
       --bucketfs-host $BUCKETFS_HOST \
       --bucketfs-use-https $USE_HTTPS \
       --bucketfs-port $BUCKETFS_PORT \
       --bucketfs-user w \
       --bucketfs-password $BUCKETFS_PASSWORD \
       --bucketfs-name bfsdefault \
       --bucket default
```

When using an Exasol Docker DB with a self-signed certificate you can add CLI option `--no-use-ssl-cert-validation`, which does not cause a security issue in this context. Please see [Exasol documentation](https://docs.exasol.com/db/latest/changelogs/6507.htm) for more details for other scenarios.

Environment variables:

| Variable             | Values            | Description                                |
|----------------------|-------------------|--------------------------------------------|
| `$BUCKETFS_HOST`     | e.g. `localhost`  | Host running Exasol incl. BucketFS service |
| `$USE_HTTPS`         | `true` or `false` |                                            |
| `$BUCKETFS_PORT`     | e.g. `2580`       | Port for BucketFS service                  |
| `$BUCKETFS_PASSWORD` |                   | Password for write access to the BucketFS  |

The BucketFS password you can obtain from your database administrator, see [BucketFS Administration](https://docs.exasol.com/db/latest/administration/on-premise/bucketfs/bucketfs.htm)

The command will also print the SQL statements `ALTER SESSION` and `ALTER SYSTEM` for activating the SLC by setting a language alias.

### Using the SLC and the Package in a UDF

Open your favorite SQL editor, connect to your Exasol instance, and activate the SLC by setting a language alias, e.g. `SQLGLOT`:

```sql
ALTER SESSION SET SCRIPT_LANGUAGES='SQLGLOT=localzmq+protobuf:///.../exaudf/exaudfclient';
```

Then define a simple UDF for demonstration purposes:

```sql
CREATE SCHEMA IF NOT EXISTS SQLGLOT;
--/
CREATE OR REPLACE SQLGLOT SCALAR SCRIPT SQLGLOT.TRANSPILE(
  "statement" VARCHAR(200000),
  "dialect_a" VARCHAR(200000),
  "dialect_b" VARCHAR(200000)
) EMITS ("result" VARCHAR(2000)) AS
import sqlglot

def run(ctx):
    result = sqlglot.transpile(ctx.statement, read=ctx.dialect_a, write=ctx.dialect_b)[0]
    ctx.emit(result)
/
;
```

And finally you can call the UDF to transpile an SQL statement from DuckDB dialect to Exasol with SQLGlot:

```sql
select SQLGLOT.TRANSPILE('SELECT EPOCH_MS(1618088028295)', 'duckdb', 'exasol');
```
