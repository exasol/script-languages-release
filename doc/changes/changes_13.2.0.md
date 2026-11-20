# script-languages-release 13.2.0, released 2026-??-??

Code name: Python 3.10 project support removal.

## Summary

This release drops Python 3.10 from the supported versions of `script-languages-release`, updates the project workflows to Python 3.11, and updates the `script-languages` submodule to include the merged Python 3.10 support removal.

## Script-Language-Container-Tool (Exaslct)

This release uses version 4.5.0 of the container tool.

## Features

n/a

## Refactorings

- #1565: Dropped Python 3.10 from the project requirement and changed workflow Python versions to 3.11.
- Updated the Python environment workflow action from v5/v9/v10 to v12.

## Dependencies

- #1565: Updated `exasol-script-languages-container-ci` from 5.3.0 to 5.4.0.
- #1565: Updated `exasol-script-languages-container-ci-setup` from 4.4.2 to 4.5.0.
- Updated `exasol-script-languages-container-tool` from 4.4.0 to 4.5.0.
- Updated `filelock` from 4.1.0 to 4.2.12.
- Updated `tornado` from 6.5.10 to 6.6.1.

## Bugfixes

n/a

## Doc

n/a

## Internal

n/a
