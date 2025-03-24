# script-languages-release 9.4.0, released 2025-03-24

Code name: Java 17 standard flavor.

## Summary

This release adds the Java 17 standard flavor, which is a replacement of the Java 17 template flavor. Furthermore, the UDF client accepts a new argument for the script options parser version for Java. `exaslct` was updated to version 3.0.0. Besides, the release provides several dependency updates and internal improvements.

## [Package Version Comparison between Release 9.3.0 and 9.4.0](package_diffs/9.4.0/README.md)

## Script-Language-Container-Tool (Exaslct)

This release uses version 3.0.0 of the container tool.

## Features

 - #1096: Replaced flavor `template-Exasol-all-java-17` with `standard-EXASOL-all-java-17`
 - #1098: Allow setting script-options-parser version via CLI argument

## Security Issues

n/a

## Refactorings

 - #943: Use env variable for ssl dependencies
 - #1043: Created a nox session for running OFT
 - Updated poetry dependencies
 - #1100: Ignore python module `setuptools.command.bdist_wheel` in import test 

## Bugs

 - #1088: Clear bazel cache in build_run step

## Doc

n/a
