# script-languages-release 1.1.0, released 2020-XX-XX

## Summary

This release introduces a new standard flavor for Exasol 7.1. Additionally, a minimal flavor for R 4.0 with only the minimal set of installed packages to simplify the customization. Furthermore, flavors for Exasol 6.0 or 6.1 were removed or updated to at least Exasol 6.2. The flavors python3-ds-* and fancyr-* where renamed to python-3.6-data-science* and r-3.5-data-science, respectively. Besides, these larger changes, this release provides bug fixes, small improvements and minor package updates. 

## Package Version Comparison to Release 1.0.0

* [Comparison of standard-EXASOL-7.0.0 in 1.0.0 with standard-EXASOL-7.1.0 in 1.1.0](package_diffs/1.1.0/diff_standard-EXASOL-7.0.0_standard-EXASOL-7.1.0/README.md)
* [Comparison of standard-EXASOL-7.0.0 in 1.0.0 with standard-EXASOL-7.0.0 in 1.1.0](package_diffs/1.1.0/diff_standard-EXASOL-7.0.0_standard-EXASOL-7.0.0/README.md)
* [Comparison of standard-EXASOL-6.2.0 in 1.0.0 with standard-EXASOL-6.2.0 in 1.1.0](package_diffs/1.1.0/diff_standard-EXASOL-6.2.0_standard-EXASOL-6.2.0/README.md)

## Bug Fixes

* Script-Language Containers:
  * #204: Bump jinja2 in Pipfile from 2.10.3 to 2.11.3
  * #201: Fix url for get-pip.py in install_python2.7_pip.sh
  * #182: Newest rsa package version doesn't work with Python 2
  * #169: Pin the pip version in flavors to lower than version 21.0 and use special install script for Python 2.7
  * #166: Flavor builds fails with Syntax Error while installing pip with get-pip.py
  * #151: Enable legacy resolver in install_via_pip.pl to avoid pip resolution issues

* Exaslct
  * #177: Fix comparision in find_images_by_tag in docker_utils.py
  * #176: Make the --path-in-bucket commandline argument optional for the upload command
  * #170: Fix the exit code of the exaslct start script
  * #167: Nightly builds sometimes don't fail when errors during the build happen
  * #160: CLI option --path-in-bucket still required for container upload
  * #127: Fix incorrect file extension for checksum files of the flavors
  * #63: Fix alter session generation for standard-EXASOL-7.0.0
  * #64: SyntaxWarning: "is not" with a literal in docker_utils.py


## Features / Enhancements

* Script-Language Containers:
  * #213: Add option --allow-no-version-for-urls in install_via_pip.pl
  * #211: Add selected GCP SDK python packages to standard flavor 7.1
  * #210: Add selected Azure SDK python packages to the standard container 7.1
  * #206: Add script to list newer candidate versions for pip packages from a package list
  * #183: Add R 4.0 Minimal flavor
  * #174: Add standard flavor for Exasol 7.1
  * #146: Add test case for hadoop-etl-udfs with dockerized hive

## Refactoring

* Script-Language Containers:
  * #216: Remove standard-EXASOL-6.1.0 flavor
  * #215: Update flavors for Exasol 6.1.0 to Exasol 6.2.0, because Exasol 6.1 reached EOL
  * #209: Rename python3-ds flavor to python-3.6-data-sience 
  * #208: Rename fancyr flavors to r-4.0-data-science
  * #184: Pin rsa python package for standard flavors
  * #117: Remove 6.0 flavors, because Exasol 6.0 reached EOL

* Exaslct
  * #113: Update test environment and import it as a python package instead as a git submodule



