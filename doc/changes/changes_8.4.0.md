# script-languages-release 8.3.0, released 2024-09-05

Code name: Updated exaslct to 1.0.0 and Exasol manifest

## Summary

This release uses version 1.0.0 of exasol-script-languages-container-tool, which had removed the starter-scripts and added support for the empty Exasol manifest file in the Script Languages Container.
Besides, it fixes several security issues by updating dependencies of the Script Languages Container.
Internally, a new version of Bazel is used to build the UDF client.

## Script-Language-Container-Tool (Exaslct)

This release uses version 1.0.0 of the container tool. 

## Security Issues

* #935: Update dependencies
* #939: Updated exaslct,slcci & slccisetup

## Refactorings

* #933: Added file `release_config.yml`
* #685: Updated Bazel and removed freeze-install from the conda flavors
* #949: Updated to exasol-script-languages-container-tool 1.0.0
