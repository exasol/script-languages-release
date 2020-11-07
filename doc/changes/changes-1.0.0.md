# script-languages-release 1.0.0, released 2020-11-07
 
## Summary
This release introduces a dedicated standard flavor for Exasol 6.2 and adds the python package simplejson to the all standard-flavors. Additionally, it updates some packages in the standard flavors and fixes some bugs. Furthermore, we introduce with this release semantic versioning. We start the semantic versioning with version 1.0.0, because this project underwent its initial development under the old versioning scheme and should have now a somewhat stable interface.

## Bug Fixes

* Script-Language Containers:
  * #119: Update apt packages
  * #116: Add NGA default uid to the passwd of the flavors
  * #114: Fix requests package import for flavor standard-EXASOL-6.1.0
  * #112: Update apt-packages for standard-EXASOL-700 flavor
  * #108: Update apt-packages for standard-EXASOL-700 flavor
  * #104: Fix R install_script using the versions package doesn't work anymore
  * #98: Update python-samba in standard-EXASOL-7.0.0

## Features / Enhancements

* Script-Language Containers:
  * #122: Add dedicated standard-EXASOL-6.2.0 flavor
  * #103: Add simplejson package to standard flavor

* Continuous Integration:
  * #73: Add nightly CI jobs which rebuild the container without using the cache
