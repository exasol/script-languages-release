# script-languages-release 7.0.0, released t.b.d

Code name: t.b.d

## Summary

t.b.d

## [Package Version Comparison between Release 6.1.0 and 7.0.0](package_diffs/7.0.0/README.md)
  
## Script-Language-Container-Tool (Exaslct)

This release uses version 0.17.0 of the container tool.

## Bug Fixes

 - #836: ModuleNotFoundError: No module named 'numpy.testing.nosetester'
 - #850: Fixed package management tests by updating Ubuntu 20.04
 - #851: Fixed AvailableRPackages tests fail for standard flavor 8.0

## Features / Enhancements

 - #857: Updated R to 4.3 and updated R packages in standard 7.1 flavor

## Documentation

n/a

## Refactoring

 - #376: Removed unused and outdated cpp and python clients (update script-languages ref)
 - #843: Switch udf-script-signature-generator to Python 3 (#351)

## Security

 - #805: Upgraded r-4-minimal flavor to R 4.3 and Ubuntu 22.04
 - #806: Removed flavor python-3.7-minimal-EXASOL-6.2.0
 - #807: Removed flavor standard-EXASOL-7.0.0
 - #827: Updated packages and ignore kernel CVEs
 - #831: Updated conda flavors to cryptography 41.0.3 and openssl 3.1.2
 - #839: Updated dependencies and ignore kernel CVEs
 - #847: Updated packages and ignore Kernel CVEs
 - #808: Updated standard-EXASOL-7.1.0 flavor to Ubuntu 20.04
 - #824: Updated scipy for standard 7.* flavor to fix CVE-2023-29824
 - #854: Updated pyarrow to fix CVE-2023-47248

Attention: The CVE's bellow can't be fixed by the container itself, rather need to be addressed by the host system executing them.
(Updated script-languages ref)

 - Ignored CVE-2023-4622, CVE-2023-4623, CVE-2023-4921, CVE-2023-4244, because they are kernel issues and not container issues
 - Ignored CVE-2023-20569, because it is an issue of the host system (AMD CPUs)

