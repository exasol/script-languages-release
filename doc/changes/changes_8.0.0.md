# script-languages-release 8.0.0, released t.b.d

Code name: t.b.d

## Summary

Standard flavors (7.1 and 8.0) are simplified into a single flavor. The standard flavor now is based on Ubuntu 22.04 and support Python3.10 and R4.4.
This release fixed the conda-based SLC builds and updated packages.


## [Package Version Comparison between Release 7.1.0 and 8.0.0](package_diffs/8.0.0/README.md)

## Script-Language-Container-Tool (Exaslct)

This release uses version 0.18.2 of the container tool. 

## Bug Fixes

 - #870: Added tests for pyexasol export/import and that sys.executable returns a comparable python interpreter to the UDF

## Features / Enhancements

- #883: Updated Standard 8.0 SLC

## Documentation

n/a

## Refactoring

 - #877: Add tests using a module-based Java UDF

## Security

 - #867: Fixed conda-based SLC builds, updated packages and ignore Kernel CVEs
 - #879: Updated package

Attention: The CVE's below can't be fixed by the container itself, rather need to be addressed by the host system executing them.

 - CVE-2024-0646
 - CVE-2024-1085
 - CVE-2024-1086
 - CVE-2024-26597
 - CVE-2024-26583
 - CVE-2024-26828
 - CVE-2024-26865
