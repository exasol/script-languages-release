# script-languages-release 13.1.0, released 2026-11-20

Code name: Python 3.10 project support removal.

## Summary

This release updates the user guide, upgrades exaslpm to 2.0.0, updates the OpenJDK 11 and 17 packages, drops Python 3.10 from the supported versions of `script-languages-release`, updates project workflows to Python 3.11, and updates the `script-languages` submodule to include the merged Python 3.10 support removal.

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

## Bugfixes

n/a

## Doc

* #1554: Updated user guide
* #1559: Added user journey to user guide describing how to build a custom SLC with SQLGlot

## Internal

n/a
