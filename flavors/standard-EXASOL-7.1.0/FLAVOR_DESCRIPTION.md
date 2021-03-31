# Details for Standard-EXASOL-7.1.0 flavor

## Packages

**Remarks:** Many Python and R packages are installed via the Ubuntu package manager to guarantee compatibility, but some get installed pip or R. The packages are grouped by there main usage and their type.

- [UDFclient dependencies](flavor_base/udfclient_deps/packages/apt_get_packages)
- [Language dependencies](flavor_base/language_deps/packages/apt_get_packages)
- Flavor packages
  - [Ubuntu packages](flavor_base/flavor_base_deps/packages/apt_get_packages)
  - [Python2 pip packages](flavor_base/flavor_base_deps/packages/pip_packages)
  - [Python3 pip packages](flavor_base/flavor_base_deps/packages/pip3_packages)
  - [R CRAN packages](flavor_base/flavor_base_deps/packages/cran_packages)
- Customization
  - [Ubuntu packages](flavor_customization/packages/apt_get_packages)
  - [Python2 pip packages](flavor_customization/packages/python2_pip_packages)
  - [Python3 pip packages](flavor_customization/packages/python3_pip_packages)
  - [R CRAN packages](flavor_customization/packages/r_cran_packages)
