# script-languages-release 1.0.1, released 2020-XX-XX

## Summary

## Bug Fixes

* #120: Increased queueTTL for google cloud build

- <issue> #215: Rename all flavors which still stand on 6.1.0 to 6.2.0 or remove them if a flavor for 6.2.0 already exists
- <issue> #213: Add option --allow-no-version-for-urls in install_via_pip.pl
- <issue> #211: Add GCP SDK python packages to standard flavor
- <issue> #210: Add Azure SDK python packages to the standard container
- <issue> #209: Rename python3-ds flavor to python-3.6-data-sience 
- <issue> #208: Rename fancyr flavors to r-4.0-data-science
- <issue> #207: Add cloud sdk python packages for standard container for 7.1
- <issue> #206: Add script to list newer candidate versions for pip packages from a package list
- <pull_request> #204: Bump jinja2 in Pipfile from 2.10.3 to 2.11.3
- <pull_request> #216: Rename data science flavors and remove standard-EXASOL-6.1.0 flavor




- <issue> #201: Fix url for get-pip.py in install_python2.7_pip.sh
- <pull_request> #184: Pin rsa python package for standard flavors
- <issue> #183: Add R 4.0 Minimal flavor
- <issue> #182: Newest rsa package version doesn't work with Python 2
- <pull_request> #180: Fix flavor documentation
- <pull_request> #177: Fix comparision in find_images_by_tag in docker_utils.py
- <pull_request> #176: Make the --path-in-bucket commandline argument optional for the upload command
- <issue> #174: Update packages for standard flavor for Exasol 7.1
- <pull_request> #170: Fix the exit code of the exaslct start script
- <pull_request> #169: Pin the pip version in flavors to lower than version 21.0 and use special install script for Python 2.7
- <issue> #167: Nightly builds sometimes don't fail when errors during the build happen
- <issue> #166: Flavor builds fails with Syntax Error while installing pip with get-pip.py
- <issue> #160: CLI option --path-in-bucket still required for container upload
- <pull_request> #156: Update Exasol logo for the UDF Signature Generator
- <pull_request> #151: Update ubuntu packages and enable legacy resolver in install_via_pip.pl
- <issue> #146: Add test case for hadoop-etl-udfs with dockerized hive
- <pull_request> #137: Update test environment and import it as a python package instead as a git submodule
- <issue> #127: Fix incorrect file extension for checksum files of the flavors
- <issue> #126: Remove flavors/FLAVORS_DOCUMENTATION.md
- <issue> #125: Add standard flavor 6.2 to the flavor documentation
- <issue> #120: Increase queueTTL for google cloud build
- <issue> #117: Remove 6.0 flavors, because Exasol 6.0 reached EOL
- <issue> #113: Update test environment
- <issue> #64: SyntaxWarning: "is not" with a literal in docker_utils.py

- <issue> #63: Check alter session generation for all flavors
- <issue> #41: Split standard flavor into one flavor for 6.2 and one for 7.0 and pin package versions
- <issue> #35: Cleanup flavors
