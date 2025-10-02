# script-languages-release 10.1.0, released 2025-10-02

Code name: New Python 3.12 standard flavor

## Summary

This release contains the new Python 3.12 standard flavor. Also it has many security related  package updates and internal improvements.

<!-- markdown-link-check-disable -->
## [Package Version Comparison between Release 10.1.0 and 10.0.0](https://github.com/exasol/script-languages-release/blob/master/doc/changes/package_diffs/10.1.0/README.md)

## Script-Language-Container-Tool (Exaslct)

This release uses version 3.4.1 of the container tool.
Pyexasol 1.1.0 contains breaking changes.

## Features

 - #1255: Added Python3.12 standard flavor 

## Security Issues

 - #1233: Updated dependency for git 1:2.43.0-1ubuntu7.3
 - #1241: Updated dependency for smbclient variants 2:4.15.13+dfsg-0ubuntu1.8
 - #1244: Updated dependency for libxml2 to 2.9.13+dfsg-1ubuntu0.9 and scales to 1.4.0
 - #1250: Updated dependency for coreutils to 9.4-3ubuntu6.1 and magrittr to 2.0.4
 - #1253: Ignored CVE-2025-47906 in Cuda flavors
 - #1254: Updated Dependencies on top of 10.0.0
 - #1257: Disabled oysteR security scanning for R flavors
 - #1260: Update locales dependencies
 - #1262: Ignored CVE-2020-11979 for cuda flavors
 - #1264: Updated Dependencies on top of 10.0.0
 - #1269: Updated dependencies on top of 10.0.0

## Refactorings

 - #1094: Removed ssl dependency 

n/a

## Dependencies

 - #1233: Updated dependencies for slc-ci-setup & PTB
 - #1238: Updated pyexasol to 1.1.0
 - #1273: Updated pyexasol to 1.2.0

## Bugs

 - #1237: Fixed package diff links with absolute link to master

## Doc

n/a

## Internal

 n/a
