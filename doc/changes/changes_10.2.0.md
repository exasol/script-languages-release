# script-languages-release 10.2.0, released t.b.d.

Code name: t.b.d.

## Summary

t.b.d.

<!-- markdown-link-check-disable -->
## [Package Version Comparison between Release 10.2.0 and 10.1.0](https://github.com/exasol/script-languages-release/blob/master/doc/changes/package_diffs/10.2.0/README.md)

## Script-Language-Container-Tool (Exaslct)

This release uses version 3.4.1 of the container tool.

## Features

 - #1267: Created template flavor template-Exasol-all-python-3.12-conda
 - #1268: Created template flavor /template-Exasol-8-python-3.12-cuda-conda

## Security Issues

 - #1278: Updated Dependencies on top of 10.1.0
 - #1289: Updated Dependencies on top of 10.1.0
 - #1303: Updated Dependencies on top of 10.1.0
 - #1304: Ignoring CVEs from nsight-compute 
 - #1306: Updated Dependencies on top of 10.1.0 and fixed CVE-2025-6176
 - #1311: Updated Dependencies on top of 10.1.0 libxml2-dev
 - #1323: Updated Dependencies on top of 10.1.0
 - #1328: Updated Dependencies on top of 10.1.0
 - #1339: Updated Dependencies on top of 10.1.0
 - #1345: Updated Dependencies on top of 10.1.0
 - #1352: Updated Dependencies on top of 10.1.0
 - #1355: Updated Dependencies on top of 10.1.0
 - #1358: Updated Dependencies on top of 10.1.0

## Refactorings

 - #1298: Added error-code-config.yml
 - #1309: Replaced AWS User release_runner(s) by IAM Role
 - #1313: Switched slack channel for update trivy cache workflow notification
 - #1324: Updated slc-ci-setup
 - #1330: Ignored Python module 'google_crc32c._crc32c' in import test

## Dependencies

 - #1286: Updated Bazel in Python 3.10 Conda flavor
 - #1291: Updated poetry lock 
 - #1295: Fixed template-Exasol-8-python-3.12-cuda-conda by downgrading conda package `cudnn`
 - #1294: Updated cuda test flavor
 - #1319: Update Dependencies on top of 10.1.0
 - #1317: Updated dependency pandas from 2.2.2 to 2.2.3
 - #1334: Removed package cudnn from cuda template flavors
 - #1349: Update Dependencies on top of 10.1.0

## Bugs

 - #1300: Changed uid/gid for Ubuntu 24.04 based flavors
 - #1326: Fixed Java Tests

## Doc

 - #1276: Added Cuda Version information section to flavor overview
 - #1341: Removed Cudnn package from flavors/README.md

## Internal

 n/a
