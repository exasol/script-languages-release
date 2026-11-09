# Developer Guide

## Cloning the Repository

Repository SLCR uses [Git Submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules). File `.gitmodules` identifies the affected paths:

```shell
[submodule "script-languages"]
        path = script-languages
        url = https://github.com/exasol/script-languages.git
```

If clone the repository initially, then please use CLI option `--recurse-submodules` and also call `githooks/install.sh` to install the Git Hooks as explained in the next section:

```shell
git clone https://github.com/exasol/script-languages-release.git --recurse-submodules
```

When creating a branch, then please ensure to also keep the submodule up-to-date:
```shell
cd script-languages; git pull; cd $OLDPWD
```

## Git Hooks

SLCR uses [Git Hooks](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks) to run specific scripts at specific events, e.g. before commiting, pushing, etc.

To install the hook, run

```shell
./githooks/install.sh
./githooks/install_recursive.sh
```

When one of these scripts contains an error, then you can skip the hooks with CLI option `-n` or `--no-verify`:

```shell
git commit -n
```

## Integration Tests

SLCR contains several integration tests which can be executed for a specific flavor using `exaslct`:
```shell
poetry run -- exaslct run-db-test --flavor-path=flavors/<flavor-name>
```

CLI option `--docker-db-image-version` allows to specify the version of the Docker DB:
```shell
poetry run -- exaslct run-db-test \
    --flavor-path=flavors/<flavor-name> \
    --docker-db-image-version 7.1.10
```

Also, you can use an existing database instance:
```shell
poetry run exaslct run-db-test \
    --flavor-path=flavors/<flavor-name> \
    --environment-type external_db \
    --external-exasol-db-host <database host> \
    --external-exasol-db-port <database port> \
    --external-exasol-bucketfs-port <BucketFS port> \
    --external-exasol-db-user <database user>  \
    --external-exasol-db-password <database password> \
    --external-exasol-bucketfs-write-password <BucketFS password>
```
`exaslct` will deploy the SLC, configure the container, and run the tests.

### Flavor-Specific Test Configuration

* Each flavor contains a configuration file for tests in file `flavors/<flavor>/ci.json`.
* This file describes the programming languages and folders which should be used for the test execution.
* You can customize the used folder using the `--test-folder` or `--test-file` parameter.

The following command displays all available options:
```shell
poetry run -- exaslct run-db-test --help
```
