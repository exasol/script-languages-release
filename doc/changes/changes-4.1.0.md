# script-languages-release 4.1.0, released 2022-03-17

Code name: Removed datascience flavors and security updates

## Summary

This release removed two datascience flavors (namely python-3.6-data-science-EXASOL-6.2.0 and r-3.5-data-science-EXASOL-6.2.0). Also, it contains many security updates and some cleanup.

## [Package Version Comparison between Release 4.0.0 and 4.1.0](package_diffs/4.1.0/README.md)
  
## Script-Language-Container-Tool (Exaslct)

This release uses version 0.9.0 of the container tool.

## Bug Fixes

 - #488: Ignore CVE-2021-43816

## Features / Enhancements

 - #150: Remove usage of pip-legacy-dependency-resolver

## Documentation

 - #533: Prepare release 4.1.0

## Refactoring

 - #344: Removed log file exaudfclient/base/file.txt 
 - #491: Cleaned up datascience flavors

## Security

 - #493: Ignore CVE-2022-0492
 - #505: Update libsasl2-dev
 - #510: update locales apt package
 - #513: Update locales apt package in 20.04 flavors
 - #511: Updated generate_package_diffs_for_flavors to Python3.8
 - #517: Update openjdk-11-jdk-headless, libssl-dev and openssl
 - #520: Ignored Kernel CVE's
 - #525: Update package libxml2-dev on standard-8.0 flavor
 - #528: Update libssl-dev