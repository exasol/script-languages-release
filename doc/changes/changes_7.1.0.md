# script-languages-release 7.1.0, released 2023-12-15

Code name: Template flavor with Python 3.10 support

## Summary

This release added a new template flavor with Python 3.10 and updated packages.

## [Package Version Comparison between Release 7.0.0 and 7.1.0](package_diffs/7.1.0/README.md)

## Script-Language-Container-Tool (Exaslct)

This release uses version 0.17.0 of the container tool. 

## Bug Fixes

n/a

## Features / Enhancements

n/a
- #861: Added flavor template-Exasol-all-python-3.10 with Python 3.10 support

## Documentation

n/a

## Refactoring

n/a

## Security

 - #861: Updated Packages and ignore CVE-2023-6176, because it only effects the Kernel

Attention: The CVE's below can't be fixed by the container itself, rather need to be addressed by the host system executing them.
(Updated script-languages ref)

 - Ignored CVE-2023-6176 because they are kernel issues and not container issues
