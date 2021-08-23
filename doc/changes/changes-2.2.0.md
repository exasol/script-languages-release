# script-languages-release 2.2.0, released 2021-08-23

Code name: Updates and small Bug Fixes

## Summary

This releases updates the script-language-container-tool and libssl. It also fixes an issue with long dependency lists for R packages and removes python-distutils-extra from python-3.6-minimal-EXASOL-6.2.0, because it pulled python2 into the flavor.

## [Package Version Comparison between Release 2.1.0 and 2.2.0](package_diffs/2.2.0/README.md)
  
## Script-Language-Container-Tool (Exaslct)

This release uses version 0.2.1 of the container tool.

## Bug Fixes
 - #293: Remove python-distutils-extra package from python-3.6-minimal-EXASOL-6.2.0
 - #317: Fix install_via_r_remotes.pl for long depenendency list 

## Features / Enhancements
 - #298: Fix Gcloud Trigger for develop branch
 - #294: Created develop branch (#297)
 - #308: Update script-language-container-tool to version 0.2.1
 - #312: Updated libssl
 - #233: Add script to generate package diffs between releases 

## Refactoring
 - #138: Removed duplicated line in ExaWrapper.java
