# script-languages-release 9.6.0, released t.b.d.

Code name: t.b.d.

## Summary

t.b.d.

## [Package Version Comparison between Release 9.6.0 and 9.5.2](package_diffs/9.6.0/README.md)

## Script-Language-Container-Tool (Exaslct)

This release uses version 3.3.0 of the container tool.

## Features

 - #1155: Use Github workflows for CI/CD
 - #1160: Added sqlglot to Python standard flavor

## Security Issues

 - #1128: Updated dependencies on top of 9.5.2
 - #1130: Update dependencies
 - #1141: Updated Dependencies on top of 9.5.2
 - #1145: Ignored CVE-2025-47273 on flavor `test-Exasol-8-cuda-ml`
 - #1152: Fixed vulnerabilities by updating dependencies
    * CVE-2025-47287 in transitive productive dependency `tornado` via `luigi` by updating `tornado` to version `6.5.1`
    * CVE-2025-47273 in transitive dev dependency `setuptools` via `exasol-toolbox`, `bandit`, `stevedore` by updating `setuptools` to version `80.9.0`
 - #1153: Updated Dependencies on top of 9.5.2
 - #1158: Updated Dependencies on top of 9.5.2

## Refactorings

 - #1135: Use unpinned version of trivy
 - #1147: Removed unnecessary copy statements
 - #1132: Use headless openjdk for all build buildsteps

## Bugs

n/a

## Doc

 - #1120: Added Script-Options Documentation
 - #1139: Fixed minor changes in script options docu

## Internal

 - relocked poetry dependencies to fix CVE-2025-43859 (transitive dependency h11)