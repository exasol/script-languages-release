# script-languages-release 11.1.0, released 2026-03-17

Code name: ARM support

## Summary

This release adds ARM support for all standard flavors and None-conda-based template flavors.
However, the CI/CD does not run integration tests on ARM yet.
Furthermore, the APT package `libleveldb-dev` was added to all three Python standard flavors.
Please note that the package difference markdown files use the new report format, which provides a clean separation between public packages (the ones which will be included in the final Script-Languages-Container image) and internal packages (which are only included in the intermediate images). 


<!-- markdown-link-check-disable -->
## [Package Version Comparison between Release 11.1.0 and 11.0.0](https://github.com/exasol/script-languages-release/blob/master/doc/changes/package_diffs/11.1.0/README.md)

## Script-Language-Container-Tool (Exaslct)

This release uses version 4.0.2 of the container tool.

## Features

  - #1402: Added ARM support for all flavors except Conda based flavors 

## Security Issues

n/a

## Refactorings

 - #1409: Prepared new version and removed duplicated packages 

## Dependencies

 - #1406: Updated slc_ci and slc_ci_setup and removed detect_platform nox task

## Bugs

n/a

## Doc

n/a

## Internal

n/a
