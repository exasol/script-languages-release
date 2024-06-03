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

## Documentation

n/a

## Refactoring

- #908: Pinned conda package

## Security

- #898: Ignored new Linux Kernel CVE's
- #904: Ignored Kernel CVE
- #906: Updated APT package
- #910: Updated APT package

Attention: The CVE's below can't be fixed by the container itself, rather need to be addressed by the host system executing them.

 - CVE-2024-0646
 - CVE-2024-1085
 - CVE-2024-1086
 - CVE-2024-26597
 - CVE-2024-26583
 - CVE-2024-26828
 - CVE-2024-26865
 - CVE-2024-26585
 - CVE-2023-52433
 - CVE-2024-26642
 - CVE-2024-26643
 - CVE-2024-26800
 - CVE-2024-26921
 - CVE-2024-26923
 - CVE-2024-26924
 - CVE-2024-26925
 - CVE-2024-27397 