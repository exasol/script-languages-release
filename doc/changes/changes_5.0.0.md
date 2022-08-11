# script-languages-release 5.0.0, released 2022-08-11

Code name: Conda-Container and UDF client refactoring

## Summary

This release adds two new python flavors, which use the conda-package manager: A conda minimal Python3.8 flavor (`template-Exasol-all-python-3.8-conda`) and a conda cuda Python3.8 flavor (`template-Exasol-all-python-3.8-cuda-conda`), which replaces the old cuda Python3.6 container.  
Also, the C++ part of the UDF client was refactored. Besides, there are several minor refactorings and features and many security updates for Ubuntu and Python packages. 

## [Package Version Comparison between Release 4.3.0 and 5.0.0](package_diffs/5.0.0/README.md)
  
## Script-Language-Container-Tool (Exaslct)

This release uses version 0.14.0 of the container tool.

## Bug Fixes

 - #686: Fixed bazel crashes on conda flavor

## Features / Enhancements

 - #666: Make package diffs more robust for CI
 - #673: Added dev-tools-script to test container

## Documentation

 n/a

## Refactoring

 - #588: Removed virtualschema-jdbc-adapter.jar
 - #329: Splitted exaudflib cc into several files
 - #646: Updated ci dependencies and removed GCloud CI
 - #650: Changed nightly cron and avoid running nightly builds during the weekend
 - #648: Moved swig-2.0.4.tar.gz to AWS
 - #572: Refactored package import tests
 - #590: Added minimal SLC with Conda support
 - #677: Improved poetry project structure
 - #679: Added a duplicated pyproject.toml
 - #451: Removed legacy install scripts
 - #503: Added flavor template-Exasol-all-python-3.8-cuda-conda

## Security

 - #645: Updated apt-transport-https
 - #654: Updated Ubuntu packages
 - #659: Updated Curl
 - #662: Updated libssl-dev and gnupg
 - #668: Updated python-ldap
 - #671: Updated git package
 - #674: Updated Python, Python-dev and Python packages
 - #683: Updated smb packages
 - #690: Updated OpenJDK and libxml2-dev
