# script-languages-release 9.6.0, released 2025-07-18

Code name: New CI/CD

## Summary

The CI/CD was migrated to Github workflows. The cuda integration tests are now executed on a GPU Github runner. The Python package `sqlglot` was added to the Python standard flavor. Documentation for Script Options was added. Besides, the release contains several internal refactorings and security fixes.

## [Package Version Comparison between Release 9.6.0 and 9.5.2](package_diffs/9.6.0/README.md)

## Script-Language-Container-Tool (Exaslct)

This release uses version 3.3.0 of the container tool.

## Features

 - #1155: Use Github workflows for CI/CD
 - #1160: Added sqlglot to Python standard flavor
 - #1157: Force GPU usage for cuda tests

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
 - #1170: Updated Dependencies on top of 9.5.2
 - Updated slc-ci and slc-ci-setup 
 - #1180: Updated Dependencies on top of 9.6.0

## Refactorings

 - #1135: Use unpinned version of trivy
 - #1147: Removed unnecessary copy statements
 - #1132: Use headless openjdk for all build buildsteps
 - #1166: Update script-languages-container-ci version
 - #1165: Fixed GPU Template Flavor
 - #1172: Removed old python2 tests

## Bugs

 - #1181: Fixed build error for conda based flavors

## Doc

 - #1120: Added Script-Options Documentation
 - #1139: Fixed minor changes in script options docu

## Internal

 - relocked poetry dependencies to fix CVE-2025-43859 (transitive dependency h11)
