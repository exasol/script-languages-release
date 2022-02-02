# script-languages-release 4.0.0, released 2022-02-02

Code name: Pandas upgrade to 1.1.5

## Summary

This release contains a breaking change in the standard containers, because due to a security fix Pandas Python3 package was updated to version 1.1.5 (from 0.22.0). Please note that this version might break existing UDF's using Pandas (Read [Pandas Release notes](https://pandas.pydata.org/pandas-docs/stable/whatsnew/v1.0.0.html#) for more information).
Also, this release contains minor bug fixes and other security fixes.

## [Package Version Comparison between Release 3.2.0 and 4.0.0](package_diffs/4.0.0/README.md)
  
## Script-Language-Container-Tool (Exaslct)

This release uses version 0.9.0 of the container tool.

## Bug Fixes

 - #472: Fix github upload script
 - #474: Fix Python3.6 installation script
 - #480: Fix R security scan script
 - #484: Update exaslct to 0.9.0

## Features / Enhancements

n/a

## Documentation

n/a

## Refactoring

 - #482: Increase version to 4.0

## Security

 - #476: Resolve datascience security issues
 - #478: Update standard-container packages