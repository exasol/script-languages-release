# script-languages-release 3.0.0, released 2021-11-03

Code name: Add Python3.8 flavor and update tests to Python3

## Summary

This release added a new Python 3.8 minimal flavor. Also, it uses the script-language-container-tool v0.5.0, which runs the db-tests with Python3, instead of Python2.7 (which has reached EOL). Because of this, all tests have be adjusted to be compatible with Python3. Please note that any custom tests for custom flavors also have to be compatible with Python3 now.
Besides, this release applied a few security updates and adjusted the Docker files of standard-, python-, and r-flavors to have a common format and behavior.

## [Package Version Comparison between Release 2.5.0 and 3.0.0](package_diffs/3.0.0/README.md)
  
## Script-Language-Container-Tool (Exaslct)

This release uses version 0.5.0 of the container tool.

## Bug Fixes

 - #377: Synchronize Dockerfiles between flavors
 - #386: Fix Network Test for r-4-minimal

## Features / Enhancements

 - #384: Use exasol python test framework package and update tests to Python3
 - #379: Add commit prefix "security" to GCloud triggers

## Documentation

 - #391: Prepare documentation for release 3.0.0

## Refactoring

 n/a

## Security

 - #376: Update binutils
