# script-languages-release 2.1.0, released 2021-07-19

Code name: New flavor without Python 2

## Summary

This release introduces a new flavor: standard-EXASOL-7.1.0-without-python2.7.
Background: Python 2 went officially out of support on January 1st 2020. From this point on, no updates have been provided anymore. This includes security updates.
Exasol plans to remove Python2 support for UDF's in future releases, and thus this new flavor will become the standard flavor in the database.


## Package Version Comparison to Release 1.1.0

* ```r-4.0-minimal-EXASOL-6.2.0 in 2.0.0``` was renamed to ```r-4-minimal-EXASOL-6.2.0 in 2.1.0```. r-base-core and r-base-dev were increased to version 4.1.0-1.1804.0.
* [Comparison of standard-EXASOL-7.1.0 with standard-EXASOL-7.1.0_without_python2.7](package_diffs/2.1.0/diff_standard-EXASOL-7.1.0_standard-EXASOL-7.1.0_without_python2.7/README.md)
* standard-EXASOL flavors (6.2/7.0/7.1): pinned EXASOL/websocket-api to latest version compatible with Python2.
  
  (Packages in other flavors have not been changed)
  
## Script-Language-Container-Tool (Exaslct)

This release uses version 0.1.0 of the container tool.

## Bug Fixes
  - #235: Update script-languages to fix echo timestamp unit test. (#277)
  - #278: Exasol WebSocket change broke CI builds (#279)
  - #281:Update exaslct (#283)


## Features / Enhancements
  - #290: Updated r-4.0 to r-4.1 (#291)
  - #295: Prepare release 2.1.0



## Refactoring
  - #284:Remove python2 from standard-EXASOL-7.1.0 (#285)
  - #284: Created new flavor EXASOL-7.1.0-without-python2.7. (#286)
