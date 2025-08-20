# script-languages-release 9.7.0, released 2025-08-07

Code name: Python template 3.12 flavor

## Summary

This release adds the new Python 3.12 template flavor. Also, it provides package updates and internal improvements.
The PyPi package `sqlglot` in the standard-python SLC was updated to version 27.6.0, thus supporting the Exasol dialect.

## [Package Version Comparison between Release 9.7.0 and 9.6.0](package_diffs/9.7.0/README.md)

## Script-Language-Container-Tool (Exaslct)

This release uses version 3.4.1 of the container tool.

## Features

 - #896: Added template-python3.12 flavor

## Security Issues

 - #1193: Update Dependencies on top of 9.6.0
 - #1146: Reverting a trivy-ignore CVE-2025-47273
 - #1218: Updated dependency for libgomp1 to 12.3.0-1ubuntu1~22.04.2

## Refactorings

 - #1177: Splitted the pandas memory leak test cases file-wi
 - #1164: Updated python packages to be compatible with CUDA 12.9
 - #1198: Migrated to latest SLC-CI-SETUP 3.3.2 and PTB 1.7.4
 - #1202: Update Sqlglot and prepared release

## Bugs

 - #1188: Fixed cuda conda build error
 - #1196: Updated slc submodule containing fix for wrong dir ref

## Doc

n/a

## Internal

 n/a
