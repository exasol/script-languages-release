# script-languages-release 6.0.0, released t.b.d.

Code name: Python 2 and Python 3.6 Removal

## Summary

In this release, we removed Python 3.6 and Python 2 from the flavors and replaced it with Python 3.7, because the former ones are long time end of life and don't receive security fixes anymore. 

**Note**: We had to remove samba support from the standard flavor 7.\*, because they depended on Python 2. If you need samba support, please use the standard flavor 8.0.

## [Package Version Comparison between Release 5.0.0 and 6.0.0](package_diffs/6.0.0/README.md)
  
## Script-Language-Container-Tool (Exaslct)

This release uses version 0.15.0 of the container tool.

## Bug Fixes

 - #703: Fixed package diff workflow
 - #714: Pinned Python3 cryptography package on legacy standard containers

## Features / Enhancements

 n/a

## Documentation

 n/a

## Refactoring

 - #697: Disabled version check GH action for master branch
 - #702: Updated toolchain dependencies
 - #706: Updated script-languages-container-ci-setup dependency
 - #774: Updated CI to the version released on PyPi

## Security

 - #710: Updated curl
 - #713: Updated Python3.7
 - #720: Updated ubuntu dependencies
 - #723: Updated curl
 - #725: Updated pip protobuf package on standard flavors
 - #727: Ignored CVE-2022-23960
 - #732: Updated openjdk for standard flavors
 - #734: Ignored CVE-2022-43945 and update Ubuntu packages
 - #737: Updated ubuntu packages
 - #740: Updated Ubuntu packages
 - #745: Updated Ubuntu python packages
 - #748: Updated Ubuntu packages and removed Python 3.6
 - #752: Updated ubuntu packages
 - #756: Updated Ubuntu packages
 - #759: Updated Ubuntu packages
 - #762: Updated Conda/Ubuntu/Pypi packages
 - #764: Removed Python 2 from the flavors
 - #767: Updated libprotobuf-dev 
 - #775: Updated dependencies
