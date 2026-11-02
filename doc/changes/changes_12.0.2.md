# script-languages-release 12.0.2, released 2026-11-02

Code name: Python DECIMAL Conversion.

## Summary

This release fixes Python float emission to DECIMAL output columns and updates pip in Python SLC flavors.

<!-- markdown-link-check-disable -->
## [Package Version Comparison between Release 12.0.2 and 12.0.1](https://github.com/exasol/script-languages-release/blob/master/doc/changes/package_diffs/12.0.2/README.md)

## Script-Language-Container-Tool (Exaslct)

This release uses version 4.4.0 of the container tool.

## Features

n/a

## Security Issues

 - #1548: Configured Trivy to skip pip's vendored-library BOM file.

## Refactorings

n/a

## Dependencies

 - #1548: Updated pip to version 26.2.2 in the Python SLC flavors.

## Bugfixes

 - #1548: Fixed conversion of Python floats emitted to DECIMAL columns.

## Doc

n/a

## Internal

n/a
