# script-languages-release 9.2.0, released 2025-02-06

Code name: Language-Definitions JSON and exaslct 2.0.0

## Summary

This release adds the `language_definitions.json` to the standard Script-Languages-Container. `exaslct` was updated to version 2.0.0. Besides, it contains several package updates.

## [Package Version Comparison between Release 9.1.0 and 9.2.0](package_diffs/9.2.0/README.md)

## Script-Language-Container-Tool (Exaslct)

This release uses version 2.0.0 of the container tool.

## Features

  - #1057: Added language_definitions.json for standard SLC
  - #1064: Update script-languages-container-tools to 2.0.0 


## Security Issues

 - #1050: Updated dependencies
 - #1054: Updated dependencies
 - #1059: Updated Dependencies on top of 9.1.0
 - #1065: Update Dependencies on top of 9.1.0

## Refactorings

 - #1034: Moved activate_conda script to ext and reuse and updated dependencies

## Bugs

  - #1060: Fixed Pandas Memory leakage Tests
     - Adjusted numbers for pandas dataframe memory leak test 
     - Added sleep in dataframe_memory_leak test after gc collection


## Doc

 n/a
