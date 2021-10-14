# script-languages-release 2.5.0, released 2021-10-14

Code name: Add new Python 3.7 minimal flavor and the SageMaker Python SDK to the standard flavors

## Summary

This release add a new Python 3.7 minimal flavor and  added the SageMaker Python SDK to the standard flavor. Besides that, we also fixed a few bugs, applied a few security updates and extented the tests.

## [Package Version Comparison between Release 2.4.0 and 2.5.0](package_diffs/2.5.0/README.md)
  
## Script-Language-Container-Tool (Exaslct)

This release uses version 0.3.0 of the container tool.

## Bug Fixes

 - #369: Script for generating package diffs may generate the wrong column order in the markdown files

## Features / Enhancements

 - #330: Add Python 3.7 minimal flavor
 - #336: Add the SageMaker Python SDK to the standard flavors 
 - #341: New tests for linker namespace

## Refactoring

 n/a

## Security

 - #359: Update curl and libcurl4-openssl-dev packages
 - #362: Update ca-certificates package
