# script-languages-release 9.3.0, released 2025-03-11

Code name: Split up standard flavors.

## Summary

This release provides additionally a standard script languages container per supported language:
- standard-EXASOL-all-java-11
- standard-EXASOL-all-python-3.10
- standard-EXASOL-all-r-4.4

Besides, it provides dependency updates for all flavors.

## [Package Version Comparison between Release 9.2.0 and 9.3.0](package_diffs/9.3.0/README.md)

## Script-Language-Container-Tool (Exaslct)

This release uses version 2.0.0 of the container tool.

## Features

  - #1078: Created Java Standard SLC
  - #1072: Created Python Standard SLC 
  - #1076: Added R Standard SLC Flavor
  - #1089: Optionally install build-essential during installation of Python packages

## Security Issues

 - #1068: Updated Dependencies on top of 9.2.0 
 - #1075: Updated Dependencies on top of 9.2.0
 - #1085: Updated Dependencies on top of 9.2.0

## Refactorings

 - #1074: Split Up standard SLC Tests

## Bugs

 n/a

## Doc

  - #1079: Updated user guide
