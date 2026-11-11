# script-languages-release 13.1.0, released 2026-??-??

Code name:

## Summary

This release updates the user guide.

<!-- markdown-link-check-disable -->
## [Package Version Comparison between Release 13.1.0 and 13.0.0](https://github.com/exasol/script-languages-release/blob/master/doc/changes/package_diffs/13.1.0/README.md)

## Script-Language-Container-Tool (Exaslct)

This release uses version 4.4.0 of the container tool.

## Features

n/a

## Security Issues

This release fixes the following security issues by updating dependencies:

| Name       | Version   | ID                  | Fix Versions |
|------------|-----------|---------------------|--------------|
| certifi    | 2026.7.22 | PYSEC-2026-4320     | 2026.10.18   |
| certifi    | 2026.7.22 | PYSEC-2026-4320     | 2026.10.18   |
| filelock   | 4.0.12    | CVE-2026-112940     | 4.2.1        |
| filelock   | 4.0.12    | CVE-2026-112913     | 4.2.1        |
| filelock   | 4.0.12    | CVE-2026-112907     | 4.2.1        |
| filelock   | 4.0.12    | CVE-2026-112938     | 4.2.1        |
| filelock   | 4.0.12    | CVE-2026-112910     | 4.2.1        |
| filelock   | 4.0.12    | CVE-2026-112934     | 4.2.1        |
| filelock   | 4.0.12    | CVE-2026-112909     | 4.2.1        |
| filelock   | 4.0.12    | CVE-2026-112911     | 4.2.1        |
| filelock   | 4.0.12    | CVE-2026-112939     | 4.2.1        |
| filelock   | 4.0.12    | CVE-2026-112915     | 4.2.1        |
| filelock   | 4.0.12    | CVE-2026-112935     | 4.2.1        |
| filelock   | 4.0.12    | CVE-2026-112912     | 4.2.1        |
| filelock   | 4.0.12    | CVE-2026-112908     | 4.2.1        |
| gitpython  | 3.2.0     | CVE-2026-114145     | 3.2.1        |
| setuptools | 84.0.0    | GHSA-xmj3-9gf7-h52w | 84.1.0       |
| tornado    | 6.5.10    | CVE-2026-116577     | 6.6          |
| tornado    | 6.5.10    | CVE-2026-115927     | 6.6          |
| tornado    | 6.5.10    | CVE-2026-116578     | 6.6          |
| virtualenv | 21.14.5   | CVE-2026-113725     | 21.14.7      |
| virtualenv | 21.14.5   | CVE-2026-113722     | 21.14.9      |
| virtualenv | 21.14.5   | CVE-2026-113714     | 21.14.9      |
| virtualenv | 21.14.5   | CVE-2026-113723     | 21.14.9      |
| virtualenv | 21.14.5   | CVE-2026-113715     | 21.14.9      |
| virtualenv | 21.14.5   | CVE-2026-113720     | 21.14.9      |
| virtualenv | 21.14.5   | CVE-2026-113717     | 21.14.9      |
| virtualenv | 21.14.5   | CVE-2026-113718     | 21.14.9      |

## Refactorings

n/a

## Dependencies

Updated

* `pycparser` from 3.0 to 3.12
* `certifi` from 2026.7.22 to 2026.10.23
* `anyio` from 4.15.1 to 4.16.0
* `wrapt` from 2.5.0 to 2.5.2
* `paramiko` from 5.0.0 to 5.1.0
* `tornado` from 6.5.10 to 6.6
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
* `filelock` from 4.0.12 to 4.2.9
* `python-discovery` from 1.6.1 to 1.9.4
* `platformdirs` from 4.12.4 to 4.14.5
* `distlib` from 0.4.3 to 0.4.4
* `setuptools` from 84.0.0 to 84.2.1
* `s3transfer` from 0.19.2 to 0.19.3
* `virtualenv` from 21.14.5 to 21.15.5
* `boto3` from 1.43.109 to 1.43.125
* `exasol-script-languages-container-ci-setup` from 4.4.1 to 4.4.2
* `nox` from 2026.8.17 to 2026.10.20

## Bugfixes

n/a

## Doc

* #1554: Updated user guide
* #1559: Added user journey to user guide describing how to build a custom SLC with sqlglot

## Internal

n/a
