# script-languages-release 8.1.0, released t.b.d.

Code name: t.b.d.

## Summary

t.b.d.

## [Package Version Comparison between Release 8.0.0 and 8.1.0](package_diffs/8.1.0/README.md)

## Script-Language-Container-Tool (Exaslct)

This release uses version 0.18.2 of the container tool. 

## Bug Fixes

- #895: Fixed GH Action 'Publish Docker Test Container' 

## Features / Enhancements

- #889: Upgraded all python template flavors
- #892: Filtered out Linux Kernel related CVE's
- #856: Changed mirror for installing R packages

## Documentation

n/a

## Refactoring

- #908: Pinned conda package

## Security

- #898: Ignored new Linux Kernel CVE's
- #904: Ignored Kernel CVE
- #906: Updated APT package
- #910: Updated APT package
- #917: Updated Ubuntu JDK package

Attention: Kernel CVE's can't be fixed by the container itself, rather need to be addressed by the host system executing them.
