# script-languages-release 8.2.0, released 2024-07-23.

Code name: Package updates.

## Summary

This release updates some Ubuntu and Python packages. Also, it fixes a bug where a Pip package could be downgraded during the Script-Languages-Container build process.

## [Package Version Comparison between Release 8.1.0 and 8.2.0](package_diffs/8.2.0/README.md)

## Script-Language-Container-Tool (Exaslct)

This release uses version 0.19.0 of the container tool. 

## Bug Fixes

- #794: Fixed install_via_pip.pl might downgrade already installed packages

## Features / Enhancements

n/a

## Documentation

n/a

## Refactoring

n/a

## Security

 - #930: Updated Packages 

Attention: Kernel CVE's can't be fixed by the container itself, rather need to be addressed by the host system executing them.
