# script-languages-release 4.3.0, released 2022-06-10

Code name: AWS CI Build and removal of standard-6.2.0 container

## Summary

This release now uses AWS for CI and release builds (instead of GClouds). The old standard-6.2.0 container has been removed. 
It also contains minor changes regarding the documentation of the packages in the container. The deployment of test container on Dockerhub has been fixed.
The source code of the exaudfclient has been now removed from the script-languages-container. Some integration tests for JVM owned native libraries have been added.
Besides, it contains several security related updates and the documentation has been improved.

## [Package Version Comparison between Release 4.2.0 and 4.3.0](package_diffs/4.3.0/README.md)
  
## Script-Language-Container-Tool (Exaslct)

This release uses version 0.14.0 of the container tool.

## Bug Fixes

 - #599: Fixed duplicated packages
 - #573: Pushed test container to Dockerhub
 - #616: Performed login to dockerhub for specific tests
 - #631: Updated script-languages-container-ci-setup and script-languages-container-ci

## Features / Enhancements

 - #433: Removed the source of the udflclient from the standard containers
 - #147: Added tests for JVM owned native libs
 - #628: Added release GH actions

## Documentation

 - #78: Added Docker socket section to prerequisites in usage documentation
 - #107: Referenced EXA_toolbox.upload_github_release_file_to_bucketfs in documentation
 - #22: Added documentation about testing
 - #161: Created FAQ and added solution for /tmp directory
 - #181: Added faq about how to start exaslct from within a docker container
 - #595: Fixed content of contributing.md
 - #632: Prepared release 4.3.0
 - #638: Adapted changelog to release-droid format 

## Refactoring

 - #601: Sorted packages in package diff alphabetically
 - #610: Removed flavor standard-6.2.0

## Security

 - #582: Updated libssl
 - #596: Updated packages
 - #605: Updated packages
 - #607: Ignored CVE-2022-1116 as it affects the Linux kernel only
 - #613: Ignored CVE-2022-29581 as it affects the Linux kernel only
 - #621: Ignored CVE-2022-21499 as it affects the Linux kernel only
 - #620: Fixed trivy false positive during secret scan 
 - #623: Removed CVE-2021-43816 from ignore list
 - #636: Updated Ubuntu packages