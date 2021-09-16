# script-languages-release 2.4.0, released 2021-09-16

Code name: MacOsX support and package updates for git and curl.

## Summary

This release upgraded to the Script-Languages-Container-Tools version 0.3.0.
With that, it enables building script-language container under MacOsX (with some limitation, check [Readme](../../README.md)).
It also contains several minor bugfixes and updates the git and curl packages.

## [Package Version Comparison between Release 2.3.0 and 2.4.0](package_diffs/2.4.0/README.md)
  
## Script-Language-Container-Tool (Exaslct)

This release uses version 0.3.0 of the container tool.

## Bug Fixes
 - #169: Removed duplicated push in CI
 - #260: Moved ppa management into separate script
 - #342: Specify python2 for bazel steps 
 - #338: Using master branch for diff generation


## Features / Enhancements
 - #345: Update git package
 - #349: Update curl and libcurl4-openssl-dev packages
 - 
## Refactoring
 n/a
