# script-languages-release 3.1.0, released 2021-12-14

Code name: Security scan

## Summary

This release runs security scans on all supported flavors. Also, the implementation of handling of Java exceptions has been changed, and the respective tests have been extended.
The script-language container tool was updated to version 0.7.0. Besides, there were several minor fixes and some packages where updated.  

## [Package Version Comparison between Release 3.0.0 and 3.1.0](package_diffs/3.1.0/README.md)
  
## Script-Language-Container-Tool (Exaslct)

This release uses version 0.7.0 of the container tool.

## Bug Fixes

 - #395: Avoid creating wheel cache in install_via_pip
 - #139: Check Java exceptions
 - #415: Fix build break
 - #422: Remove maven from r-4-minimum flavor
 - #424: Fix deployment of security scan report in Gcloud builds

## Features / Enhancements

 - #401: Integrate script-languages-container-tool v0.6.0
 - #343: Change bazel python scripts to Python3
 - #383: Added security scan for flavors 

## Documentation

 - #225: Improve py_dataframe documentation and moved it to user guide

## Refactoring

 n/a

## Security

 - #399: Update libssl-dev in python-3.8-minimal flavor
 - $409: Update Python packages
 - #418: Update python-samba and python-pandas
 - #425: Update libssl-dev 
 - #430: Update python-samba
