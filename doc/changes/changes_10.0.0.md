# script-languages-release 10.0.0, released 2025-08-28

Code name: Trimmed docker images for template flavors.

## Summary

The build process for template flavors changed slightly which aims to decrease the size of the intermediate docker images. Besides, this release contains dependency updates and internal improvements.

## [Package Version Comparison between Release 10.0.0 and 9.7.0](package_diffs/10.0.0/README.md)

## Script-Language-Container-Tool (Exaslct)

This release uses version 3.4.1 of the container tool.

## Features

n/a

## Security Issues

 - #1210: Update Dependencies on top of 9.7.0
 - #1213: Update Dependencies on top of 9.7.0
 - #1223: Updated Dependencies on top of 9.7.0
 - #1226: Updated dependency for python 3.10 to 3.10.12-1~22.04.11
 - #1233: Udpated dependency for git 1:2.43.0-1ubuntu7.3

## Refactorings

 - #1207: Updated GPU Test Query
 - #1206: Trimmed release docker images
 - #1228: Use slow-wrapper for template cuda flavor

## Dependencies

 - #1220: Updated dependencies for template cuda flavor
 - #1233: Updated dependencies for slc-ci-setup & PTB

## Bugs

n/a

## Doc

n/a

## Internal

 n/a
