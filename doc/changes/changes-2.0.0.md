# script-languages-release 2.0.0, released 2021-06-21

Code name: Use initial release of [script-languages-container-tool](https://github.com/exasol/script-languages-container-tool)

## Summary

This release uses the first release of the script-languages-container-tool. It also updates selected Python libraries, including the Google Cloud API, Microsoft Azure SDK and AWS SDK. Besides, this release provides bug fixes, small improvements.
**Please note that due to the restructuring in version 2.0.0 the file *flavors/<flavor>/flavor_base/build_steps.py* has been changed. If you have your own flavors, you need to change the [import](https://github.com/exasol/script-languages-release/blob/5f6dede5ce18c648b1660bbe58af081f9467a982/flavors/standard-EXASOL-7.1.0/flavor_base/build_steps.py#L3) of the exaslct package.**

## Package Version Comparison to Release 1.1.0

* [Comparison of standard-EXASOL-7.1.0 in 2.0.0 with standard-EXASOL-7.1.0 in 1.1.0](package_diffs/2.0.0/diff_standard-EXASOL-7.1.0_standard-EXASOL-7.1.0/README.md)
* [Comparison of standard-EXASOL-7.0.0 in 2.0.0 with standard-EXASOL-7.0.0 in 1.1.0](package_diffs/2.0.0/diff_standard-EXASOL-7.0.0_standard-EXASOL-7.0.0/README.md)
* [Comparison of standard-EXASOL-6.2.0 in 2.0.0 with standard-EXASOL-6.2.0 in 1.1.0](package_diffs/2.0.0/diff_standard-EXASOL-6.2.0_standard-EXASOL-6.2.0/README.md)

## Script-Language-Container-Tool (Exaslct)

This release uses version 0.1.0 of the container tool, all relevant changes can be found [here](https://github.com/exasol/script-languages-container-tool/releases/tag/0.1.0).

## Bug Fixes

  - #65: ForkingPickler PicklingError under MacOSX with Python 3.8
  - #229: Fix substitution for empty versions in install script for R remotes and apt
  - #228: Fix error caused by consecutive COPY in the Dockefiles
  - #247: Update apt-packages for standard flavors
  - #256: Fix link in flavor description of standard 7.1 flavor for flavor_base_deps/packages/*
  - #264: Fix broken link in flavor description of Python-3.6-minimal-EXASOL-6.2.0


## Features / Enhancements

  - #66: Investigate to run exalsct in docker container to better support MacOSX and Windows
  - #226: Create python 3.6 minimal flavor for easier customization
  - #261: Check links in markdown files automatically
  - #254: Updated script-languages-container-tools to v0.1.0
  - #255: Updated selected Python libraries, including the Google Cloud API, Microsoft Azure SDK and AWS SDK
  - #270: Prepared release notes and changelog for v2.0.0


## Refactoring

  - #243: Remove exaslct implementation and replace it by the starter scripts of exasol/script-languages-container-tool
  - #270: Removed pip files