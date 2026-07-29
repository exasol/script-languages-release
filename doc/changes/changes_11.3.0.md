# script-languages-release 11.3.0, released 2026-07-29

Code name: Dependency updates and test refactoring

## Summary

This release primarily contains a maintenance update. It includes refactoring of the generic language tests into self-contained language-specific tests, tests for Python interpreters, removal of duplicate alias,  PYTHON3, from language aliases and dependency updates for PyExasol, BucketFS, SqlGlot, and tzdata.

<!-- markdown-link-check-disable -->
## [Package Version Comparison between Release 11.3.0 and 11.2.0](https://github.com/exasol/script-languages-release/blob/master/doc/changes/package_diffs/11.3.0/README.md)

## Script-Language-Container-Tool (Exaslct)

This release uses version 4.1.0 of the container tool.


## Features


## Security Issues

n/a

## Refactorings

 - #1454: Refactor generic-lang-tests as self-contained lang-based tests
 - #1469: Test if python interpreters are intact for conda and apt
 - #1490: Tests for python interpreter variants are executed with linker-namespace test
 - #1491: Removed generic-lang-tests and pointed to individual lang tests
 - #1504: Removed PYTHON3 from language aliases
 - #1507: Update dependencies. PyExasol, BucketFS, SqlGlot

## Dependencies

 - #1494: Use wildcards for python3.10-dev and python3-distutils
 - #1498: Updated tzdata ver to 2026* 

## Bugfixes

n/a 

## Doc

n/a

## Internal
