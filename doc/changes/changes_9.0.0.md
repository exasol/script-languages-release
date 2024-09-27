# script-languages-release 9.0.0, released t.b.d.

Code name: t.b.d.

## Summary

t.b.d.


## Script-Language-Container-Tool (Exaslct)

This release uses version 1.0.0 of the container tool. 

## Features

 - #962: Add a GH workflow which uploads trivy databases and updated Ubuntu packages

## Security Issues

 - #956: Updated dependencies
 - #1006: Updated Dependencies on top of 8.4.0 

## Refactorings

  - #950: Refactored existing script-options parser
  - #944: Removed exaudfclient_bin_py3
  - #967: Added ctpg script options parser
  - #972: Refactor exception handling for Script Options parser
  - #973: Support new lines and white spaces at the beginning in script options values
  - #969: Use new CTPG Parser in Java VM
  - #980: Moved flavor template-Exasol-all-java-17 to script-languages repo
  - #971: Removed dead code in Java VM
  - #982: Added a performance test for ScriptOptions parser for a single line UDF
  - #983: Refactor CTPG script options Java parser code
  - #986: Added environment variable for new ScriptOptionsLine parser in UDF client
  - #990: Forward JAR options without changing order to classpath
  - #989: Trim script class and import script options
  - #988: Adapted Java integration tests for new ScriptOptions parser
  - #878: Fixed jvmoption and parameters containing a space
  - #1009: Removed NVIDIA GPU Driver Libraries from template-CUDA SLC
  - Bumped version to 9.0.0 

## Bugs
  - #977: Fixed Trivy update cache workflow
  - #993: Added escape sequence for backslash in new Script Options parser
  - #1002: Use ECR fallback repository for Trivy caching
  - #958: Fix conda version conflict
  - #1014: Fixed Push Docker Test Container workflow

## Doc

 - #954: added release checklist