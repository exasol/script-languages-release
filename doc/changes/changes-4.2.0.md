# script-languages-release 4.2.0, released 2022-05-02

Code name: Vagrant setup and bugfix for Pandas Dataframe

## Summary

This release fixes a bug in the Python UDF client which occurred when emitting Pandas dataframes.
Also, it adds initial support for setting up a virtual machine via vagrant, which can be used to build this project.
Besides, this releases contains several security fixes.

## [Package Version Comparison between Release 4.1.0 and 4.2.0](package_diffs/4.2.0/README.md)
  
## Script-Language-Container-Tool (Exaslct)

This release uses version 0.x.0 of the container tool.

## Bug Fixes

 - #561: Fixed emit of Pandas Dataframe for np.float32 dtype 

## Features / Enhancements

 - #542: Add vagrant setup for libvirt

## Documentation

- #578: Prepared release 4.2.0

## Refactoring

- n/a

## Security

 - #541: Update packages python-dev, openjdk, paramiko and ignore CVE-2022-0492
 - #553: Ignored CVE-2022-23648
 - #558: Update git package
 - #562: Ignored CVE-2022-27191
 - #567: Updated Python3.7 packages
 - #570: Updated Ubuntu packages
 - #575: Updated NVidia CUDA Public Key and Updated Curl