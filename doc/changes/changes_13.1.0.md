# script-languages-release 13.1.0, released 2026-??-??

Code name: Python 3.10 project support removal.

## Summary

This release updates the user guide, drops Python 3.10 from the supported versions of `script-languages-release`, updates project workflows to Python 3.11, and updates the `script-languages` submodule to include the merged Python 3.10 support removal.

<!-- markdown-link-check-disable -->
## [Package Version Comparison between Release 13.1.0 and 13.0.0](https://github.com/exasol/script-languages-release/blob/master/doc/changes/package_diffs/13.1.0/README.md)

## Script-Language-Container-Tool (Exaslct)

This release uses version 4.5.0 of the container tool.

## Features

n/a

## Refactorings

* Updated exaslpm to version 2.0.0
* #1565: Dropped Python 3.10 from the project requirement and changed workflow Python versions to 3.11.
* Updated the Python environment workflow action from v5/v9/v10 to v12.

## Dependencies

* #1556: Updated openjdk-11-jdk-headless and openjdk-17-jdk-headless
* #1562: Updated openjdk-11-jdk-headless and openjdk-17-jdk-headless

Updated Python modules:

* `pycparser` from 3.0 to 3.12
* `certifi` from 2026.7.22 to 2026.10.23
* `anyio` from 4.15.1 to 4.16.0
* `wrapt` from 2.5.0 to 2.5.2
* `paramiko` from 5.0.0 to 5.1.0
* `tornado` from 6.5.10 to 6.6.1
* `types-requests` from 2.33.0.20261006 to 2.33.0.20261030
* `typing-inspection` from 0.4.4 to 0.4.5
* `pydantic-core` from 2.46.5 to 2.50.4
* `gitpython` from 3.2.0 to 3.2.1
* `jsonpickle` from 4.1.3 to 4.1.4
* `pydantic` from 2.13.5 to 2.14.3
* `types-pyyaml` from 6.0.12.20260906 to 6.0.12.20261103
* `pytz` from 2026.5 to 2026.6
* `tzdata` from 2026.5 to 2026.6
* `botocore` from 1.43.109 to 1.43.125
* `exasol-bucketfs` from 2.3.0 to 2.3.1
* `filelock` from 4.1.0 to 4.2.12
* `python-discovery` from 1.6.1 to 1.9.4
* `platformdirs` from 4.12.4 to 4.14.5
* `distlib` from 0.4.3 to 0.4.4
* `setuptools` from 84.0.0 to 84.2.1
* `s3transfer` from 0.19.2 to 0.19.3
* `virtualenv` from 21.14.5 to 21.15.5
* `boto3` from 1.43.109 to 1.43.125
* `exasol-script-languages-container-ci-setup` from 4.4.1 to 4.5.0
* `nox` from 2026.8.17 to 2026.10.20
* #1565: Updated `exasol-script-languages-container-ci` from 5.3.0 to 5.4.0.

## Bugfixes

n/a

## Doc

* #1554: Updated user guide
* #1559: Added user journey to user guide describing how to build a custom SLC with SQLGlot

## Internal

n/a
