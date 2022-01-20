# script-languages-release 3.2.0, released t.b.d.

Code name: New standard container for Exasol 8.0 and Java UDF conditional compilation. 

## Summary

This release adds the new standard container for Exasol 8.0 with Ubuntu 20.04, Python 3.8, Java 11 and R 4.1. Furthermore, we added conditional compilation to Java UDF, which only invokes the Java compiler if the script contains Java code. If it only contains %jar and %scriptClass options it doesn't get used which saves considerable amount of time during startup of the UDFs. 

## [Package Version Comparison between Release 3.1.0 and 3.2.0](package_diffs/3.2.0/README.md)
  
## Script-Language-Container-Tool (Exaslct)

This release uses version 0.8.0 of the container tool.

## Bug Fixes

 - #461: Fix Security scan for r-3.5-data-science flavor
 - #118: rredis package got discontinued and the new flavor standard-8.0.0-Exasol replaces with redux

## Features / Enhancements

 - #440: Updated exaslct to 0.8.0
 - #441: updated to exasol python test framework 0.3.0
 - #446: Add shellcheck GH actions
 - #454: Java UDF conditional compilation
 - #382: Add new standard flavor for Exasol 8.0
 - #333: Use the new pip dependency resolver in the new flavor standard-8.0.0-Exasol

## Documentation

n/a

## Refactoring

 n/a

## Security

 - #434: Update Python3.6 and Python3.8
 - #437: Update openjdk-11-jdk-headless
 - #447: Added tensorflow to ignore list on Python3.6-data-science flavor
 - #453: Ignore CVE-2021-33430 on Python3.6 flavors
 - #457: Use source package of numpy for all flavors. Undo of #453 and fix for CVE-2021-33430 (for major flavors).
