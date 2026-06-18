# script-languages-release 11.2.0, released t.b.d.

Code name: t.b.d.

## Summary

t.b.d.

<!-- markdown-link-check-disable -->
## [Package Version Comparison between Release 11.2.0 and 11.1.1](https://github.com/exasol/script-languages-release/blob/master/doc/changes/package_diffs/11.2.0/README.md)

## Script-Language-Container-Tool (Exaslct)

This release uses version 4.0.3 of the container tool.

## Features

 - #1428: Added ARM support for Conda based flavors

## Security Issues

n/a

## Refactorings

 - #1401: Changed r_import_modules test to make it compatible with new package file format
 - #1425: Used wildcards in versions for apt packages
 - #1425: Updated tzdata version (2025b to 2026a)
 - #1432: Fixed UDF Plugin
 - #1415: Removed legacy package files
 - #1442: Added new preprocessor flag USE_STATIC_SWIG
 - #1369: Added missing tests for context
 - #1380: Removed unused scripts and files
 - #1422: Fixed JAVA_HOME path
 - #1464: Ignored maven settings.xml for security scanner


## Dependencies

 - #1440: Updated "nloptr"
 - #1460: Updated openjdk dependency
 - #1470: Updated "tzdata"
 - #1480: Updated "ca-certificates"
 - #1484: Updated exaslsct, slc-ci & slc-ci-setup

## Bugfixes

 - Added workaround for #1435: Pining packaging Python module to version 25.0
 - #1438: Fixed 'standard-EXASOL-all' flavor: trivy 0.69.3 not found
 - #1449: Fixed 'standard-EXASOL-all' flavor: Prevent upgrade to R 4.6.0
 - #1482: Added tools.pip section to conda template flavors
 

## Doc

n/a

## Internal

 - Relocked dependencies
