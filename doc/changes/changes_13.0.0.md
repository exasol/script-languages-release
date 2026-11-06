# script-languages-release 13.0.0, released 2026-11-04

Code name: Python DECIMAL Conversion and Python 3.10 removal

## Summary
This release fixes the emission of Python floats to DECIMAL output columns and updates pip in Python SLC flavors.
It also removes all Python 3.10 based flavors because the required upgrade to the latest version of pyarrow is incompatible with Python 3.10.

<!-- markdown-link-check-disable -->
## [Package Version Comparison between Release 13.0.0 and 12.0.1](https://github.com/exasol/script-languages-release/blob/master/doc/changes/package_diffs/13.0.0/README.md)

## Script-Language-Container-Tool (Exaslct)

This release uses version 4.4.0 of the container tool.

## Features

n/a

## Security Issues

 - #1548: Configured Trivy to skip pip's vendored-library BOM file.

## Refactorings

 - #1551: Python 3.10 flavors were removed

## Dependencies

 - #1548: Updated pip to version 26.2.2 in the Python SLC flavors.
 - #1550: pyarrow was updated to 26.0.1

## Bugfixes

 - #1548: Fixed conversion of Python floats emitted to DECIMAL columns.

## Doc

n/a

## Internal

n/a
