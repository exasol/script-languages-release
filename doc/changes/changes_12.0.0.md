# script-languages-release 12.0.0, released t.b.d

Code name: t.b.d.

## Summary

**Breaking Changes:**

This release removes the `standard-EXASOL-all` flavor and
refreshes the other Python flavors with updated, security-maintained dependencies.
The SageMaker Python SDK and pysftp have been removed from the standard Python flavors.
The CUDA Conda template flavors have been updated to support CUDA toolkit version 13.3.1.

<!-- markdown-link-check-disable -->
## [Package Version Comparison between Release 12.0.0 and 11.3.0](https://github.com/exasol/script-languages-release/blob/master/doc/changes/package_diffs/12.0.0/README.md)

## Script-Language-Container-Tool (Exaslct)

This release uses version 4.2.1 of the container tool.


## Features

 - #1513: Removed standard-EXASOL-all flavor and package upgrades

## Security Issues

n/a

## Refactorings

n/a

## Dependencies

 - #1518: Updated tar to version 1.35+dfsg-3ubuntu*
 - #1520: Updated openjdk-11-jdk-headless and openjdk-17-jdk-headless

## Bugfixes

n/a 

## Doc

n/a

## Internal

n/a
