# script-languages-release 7.0.0, released t.b.d

Code name: t.b.d

## Summary

t.b.d

## [Package Version Comparison between Release 6.1.0 and 7.0.0](package_diffs/7.0.0/README.md)
  
## Script-Language-Container-Tool (Exaslct)

This release uses version 0.17.0 of the container tool.

## Bug Fixes

n/a

## Features / Enhancements

n/a

## Documentation

n/a

## Refactoring

 - #376: Removed unused and outdated cpp and python clients (update script-languages ref)

## Security

 - #805: Upgraded r-4-minimal flavor to R 4.3 and Ubuntu 22.04
 - #806: Removed flavor python-3.7-minimal-EXASOL-6.2.0
 - #807: Removed flavor standard-EXASOL-7.0.0
 - #827: Updated packages and ignore kernel CVEs
 - #831: Updated conda flavors to cryptography 41.0.3 and openssl 3.1.2
 - #839: Updated dependencies and ignore kernel CVEs

Attention: The CVE's bellow can't be fixed by the container itself, rather need to be addressed by the host system executing them.
(Updated script-languages ref)

 - Ignored CVE-2023-4622, CVE-2023-4623, CVE-2023-4921, because they are kernel issues and not container issues
 - Ignored CVE-2023-20569, because it is an issue of the host system (AMD CPUs)

