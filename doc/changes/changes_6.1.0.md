# script-languages-release 6.1.0, released 2023-06-02

Code name: Pandas 2 support

## Summary

This releases adds support for Pandas 2 pyarrow dtype columns for emitting dataframes from Python UDFs. Furthermore, it fixes a silent data corruption when emitting dateframes with float16 dtype columns from Python UDFs.

## [Package Version Comparison between Release 6.0.0 and 6.1.0](package_diffs/6.1.0/README.md)
  
## Script-Language-Container-Tool (Exaslct)

This release uses version 0.17.0 of the container tool.

## Bug Fixes

 - #792: Fixed Github workflow publish-test-container by updating script-languages-container-tool to 0.17.0 and script-languages-container-ci to 1.1.0
 - #796: Fixed silent data corruption when emitting dataframes with float16 dtype columns from Python UDFs
 - #819: Fixed CI, adapted project to Exasol 8 and updated apt packages

## Features / Enhancements

 - #793: Added support for Pandas 2 pyarrow dtype columns for emitting data from Python UDFs

## Documentation

 n/a

## Refactoring

n/a

## Security

 - #785: Updated Ubuntu packages
 - #789: Updated Ubuntu packages
 - #777: Updated redis-py to fix CVE-2023-28859
 - #800: Updated Ubuntu packages
 - #803: Updated Ubuntu packages
 - #815: Updated Ubuntu packages and poetry.lock
