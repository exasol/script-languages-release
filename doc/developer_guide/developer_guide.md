# Developer Guide

## Integration Tests

SLCR contains several integration tests which can be executed for a specific flavor using the `exaslct`:
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
