# script-languages-release 4.3.0, released t.b.d.

Code name: t.b.d.

## Summary

t.b.d.

## [Package Version Comparison between Release 4.2.0 and 4.3.0](package_diffs/4.3.0/README.md)
  
## Script-Language-Container-Tool (Exaslct)

This release uses version 0.9.0 of the container tool.

## Bug Fixes

 - #599: Fixed duplicated packages

## Features / Enhancements

 - #433: Removed the source of the udflclient from the standard containers
 - #147: Added tests for JVM owned native libs

## Documentation

 - #78: Added Docker socket section to prerequisites in usage documentation
 - #107: Referenced EXA_toolbox.upload_github_release_file_to_bucketfs in documentation
 - #22: Added documentation about testing
 - #161: Created FAQ and added solution for /tmp directory
 - #181: Added faq about how to start exaslct from within a docker container
 - #595: Fixed content of contributing.md

## Refactoring

- #601: Sorted packages in package diff alphabetically
- #610: Removed flavor standard-6.2.0

## Security

 - #582: Updated libssl
 - #596: Updated packages
 - #605: Updated packages
 - #607: Ignored CVE-2022-1116
