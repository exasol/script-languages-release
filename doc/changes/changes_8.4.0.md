# script-languages-release 8.4.0, released t.b.d.

Code name: t.b.d.

## Summary

t.b.d.


## Script-Language-Container-Tool (Exaslct)

This release uses version 1.0.0 of the container tool. 

## Features

 - #962: Add a GH workflow which uploads trivy databases and updated Ubuntu packages

## Security Issues

 - #956: Updated dependencies

## Refactorings

  - #950: Refactored existing script-options parser
  - #944: Removed exaudfclient_bin_py3
  - #967: Added ctpg script options parser
  - #972: Refactor exception handling for Script Options parser
  - #973: Support new lines and white spaces at the beginning in script options values
  - #969: Use new CTPG Parser in Java VM
  - #980: Moved flavor template-Exasol-all-java-17 to script-languages repo

## Bugs
  - #977: Fixed Trivy update cache workflow

## Doc

 - #954: added release checklist