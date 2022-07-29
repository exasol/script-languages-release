# Exasol Script Language Flavors overview

Script Language Flavors are configurations of languages and libraries to be available in Script Languages for the Exasol database. We use a graph of Dockerfiles and other configuration files to describe a flavor. Exaslct uses these files to build the container.

## Which flavors are available and what do they provide?

Currently, we provide

- the `standard` flavors: These flavors include three langauage implementations: Java, Python, and R and a collection of typical libraries
- the `minimal` flavors: These flavors include a certain language with only absolute necessary packages. This allows very simple customization because you control almost all dependencies.

### Standard flavors

From the standard-EXASOL flavors, we built the built-in container which we deliver with each Exasol Version.
It provides the languages Java, Python 2/3 and R.

We provide three flavors for different Exasol versions. The flavors only specify the minimal Exasol version with which they are compatible.

Due to EOL of Python2, there is split of the standard-EXASOL-7.1.0 container: one with Python2.7 support, and one without it.

- standard-EXASOL-8.0.0
  - Base Image: ubuntu:20.04
  - Compatible Exasol Versions: 8.0.\* (but likely also with 7.\*.\*) 
  - Available languages: Java 11, Python 3.8 and R 4.1
  - [Here](standard-EXASOL-8.0.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

- standard-EXASOL-7.1.0-without-python2.7
  - Base Image: ubuntu:18.04
  - Compatible Exasol Versions: 7.1.\* (but likely also with 7.0 and 6.2.\*) 
  - Available languages: Java 11, Python 3.6 and R 3.4
  - [Here](standard-EXASOL-7.1.0-without-python2.7/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

- standard-EXASOL-7.1.0
  - Base Image: ubuntu:18.04
  - Compatible Exasol Versions: 7.1.\* (but likely also with 7.0 and 6.2.\*) 
  - Available languages: Java 11, Python 2.7, Python 3.6 and R 3.4
  - [Here](standard-EXASOL-7.1.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

- standard-EXASOL-7.0.0
  - Base Image: ubuntu:18.04
  - Compatible Exasol Versions: 7.0.\* (but likely also with 6.2.\*) 
  - Available languages: Java 11, Python 2.7, Python 3.6 and R 3.4
  - [Here](standard-EXASOL-7.0.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

### Python-3.6-minimal flavors

The Python-3.6-minimal flavor provides the language Python 3.6 with only absolute necessary packages. This allows very simple customization because you control almost all dependencies.

- python-3.6-minimal-6.2.0
  - Base Image: ubuntu:18.04
  - Compatible Exasol Versions: 7.1.\*, 7.0.\*, 6.2.\*
  - Available languages: Python 3.6
  - [Here](https://github.com/exasol/script-languages/tree/master/flavors/python-3.6-minimal-EXASOL-6.2.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

### Python-3.7-minimal flavors

The Python-3.7-minimal flavor provides the language Python 3.7 with only absolute necessary packages. This allows very simple customization because you control almost all dependencies.

- python-3.7-minimal-6.2.0
  - Base Image: ubuntu:18.04
  - Compatible Exasol Versions: 7.1.\*, 7.0.\*, 6.2.\*
  - Available languages: Python 3.7
  - [Here](https://github.com/exasol/script-languages/tree/master/flavors/python-3.7-minimal-EXASOL-6.2.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

### Python-3.8-minimal flavors

The Python-3.8-minimal flavor provides the language Python 3.8 with only absolute necessary packages. This allows very simple customization because you control almost all dependencies.

- python-3.8-minimal-6.2.0
  - Base Image: ubuntu:20.04
  - Compatible Exasol Versions: 7.1.\*, 7.0.\*, 6.2.\*
  - Available languages: Python 3.8
  - [Here](https://github.com/exasol/script-languages/tree/master/flavors/python-3.8-minimal-EXASOL-6.2.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

### template-Exasol-all-python-3.8-conda

The template-Exasol-all-python-3.8-conda flavor provides the language Python 3.8  with only absolute necessary packages. This allows very simple customization because you control almost all dependencies. In contrast to Python-3.8-minimal, it also allows the installation of conda packages.

- template-Exasol-all-python-3.8-conda
  - Base Image: ubuntu:20.04
  - Compatible Exasol Versions: 8.0.\*,7.1.\*, 7.0.\*
  - Available languages: Python 3.8
  - Supported Package Manager: conda, pip
  - [Here](https://github.com/exasol/script-languages/tree/master/flavors/template-Exasol-all-python-3.8-conda/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

### template-Exasol-all-python-3.8-cuda-conda

The template-Exasol-all-python-3.8-cuda-conda flavor provides the language Python 3.8 with NVIDIA GPU support and with only absolute necessary packages. This allows very simple customization because you control almost all dependencies. In contrast to Python-3.8-minimal, it also allows the installation of conda packages.

- template-Exasol-all-python-3.8-conda
  - Base Image: ubuntu:20.04
  - Compatible Exasol Versions: 8.0.\*,7.1.\*, 7.0.\*
  - Available languages: Python 3.8
  - Supported Package Manager: conda, pip
  - Supported NVIDIA Driver: 510.47.0
  - Installed CudaToolkit: 11.3.1
  - Installed CuDNN: 8.1.0.77
  - [Here](https://github.com/exasol/script-languages/tree/master/flavors/template-Exasol-all-python-3.8-cuda-conda/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

### R-4-minimal flavors

The R-4-minimal flavor provides the language R 4.1 with only absolute necessary packages. This allows very simple customization because you control almost all dependencies.

- r-4-minimal-EXASOL-6.2.0
  - Base Image: ubuntu:18.04
  - Compatible Exasol Versions: 7.1.\*, 7.0.\*, 6.2.\*
  - Available languages: R 4.1
  - [Here](r-4-minimal-EXASOL-6.2.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

## Flavor or Language-specific features

Some flavors or Languages provide additional features.

### Pandas DataFrame support

All flavors which support Python3 as a language now have direct DataFrame support for accessing and emitting data in Exasol. Please see the [documentation](../doc/user_guide/py_dataframe.md) for more information and example usage.

## Naming convention

Script language flavors for different purposes come in different versions that are reflected by their name.
The naming convention is like this:

`<flavor-name>-EXASOL-<minimum-Exasol-Version>`

This allows us to provide new versions of a flavor when new features become available in Exasol that are not supported in older flavors.

So, in order to find the correct version of a flavor for your version of Exasol, simply take the latest container with version less than or equal to your Exasol version. So for Exasol 6.2.13, you would use the `*-EXASOL-6.2.0` flavors.
