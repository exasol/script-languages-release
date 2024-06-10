# script-languages-release 8.1.0, released 2024-06-19

Code name: Fixed memory leak for Python Dataframe Extension

## Summary

This release fixes 3 memory related bugs in the Python Dataframe Extension, which were the root cause of a memory leak. Besides,
this version uses the latest version of `exaslct` (0.19.0) and Python3.10 as runtime for the CI builds. The security scanner was changed in order to ignore all Linux Kernel related CVE's during the CI and release builds.

## [Package Version Comparison between Release 8.0.0 and 8.1.0](package_diffs/8.1.0/README.md)

## Script-Language-Container-Tool (Exaslct)

This release uses version 0.19.0 of the container tool. 

## Bug Fixes

- #895: Fixed GH Action 'Publish Docker Test Container'
- #902: fixed memory related bugs with emit dataframe 

## Features / Enhancements

- #889: Upgraded all python template flavors
- #892: Filtered out Linux Kernel related CVE's
- #856: Changed mirror for installing R packages
- #921: Use exasol-python-test-framework 0.5.0

## Documentation

n/a

## Refactoring

- #908: Pinned conda package
- #915: Updated Python

## Security

- #898: Ignored new Linux Kernel CVE's
- #904: Ignored Kernel CVE
- #906: Updated APT package
- #910: Updated APT package
- #917: Updated Ubuntu JDK package

Attention: Kernel CVE's can't be fixed by the container itself, rather need to be addressed by the host system executing them.
