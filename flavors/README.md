# Exasol Script Language Flavors overview

Script Language Flavors are configurations of languages and libraries to be available in Script Languages for the Exasol database. We use a graph of Dockerfiles and other configuration files to describe a flavor. Exaslct uses these files to build the container.

## Which flavors are available and what do they provide?

Currently, we provide

- the `standard` flavors: These flavors include three langauage implementations: Java, Python, and R and a collection of typical libraries
- the `template` flavors: These flavors include a certain language with only absolute necessary packages. This allows very simple customization because you control almost all dependencies.

### Standard flavors

From the standard-EXASOL flavors, we built the built-in container which we deliver with each Exasol Version.
It provides the languages Java, Python 3 and R.

We provide one flavor, which can be used in all currently active Exasol versions.

- standard-EXASOL-all
  - Base Image: ubuntu:22.04
  - Compatible Exasol Versions: 
    - 8.\* 
    - 7.1.\* 
  - Available languages: Java 11, Python 3.10 and R 4.4
  - [Here](standard-EXASOL-all/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

### template-Exasol-all-python-3.10

The template-Exasol-all-python-3.10 flavor provides language Python 3.10 with only absolutely necessary packages. This allows very simple customization because you control almost all dependencies.

- template-Exasol-all-python-3.10
  - Base Image: ubuntu:22.04
  - Compatible Exasol Versions: 8.\*, 7.1.\*
  - Available languages: Python 3.10
  - [Here](template-Exasol-all-python-3.10/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

### template-Exasol-all-python-3.10-conda

The template-Exasol-all-python-3.10-conda flavor provides the language Python 3.10  with only absolute necessary packages. This allows very simple customization because you control almost all dependencies. In contrast to Python-3.10-minimal, it also allows the installation of conda packages.

- template-Exasol-all-python-3.10-conda
  - Base Image: ubuntu:22.04
  - Compatible Exasol Versions: 8.\*,7.1.\*, 7.0.\*
  - Available languages: Python 3.10
  - Supported Package Manager: conda, pip
  - [Here](template-Exasol-all-python-3.10-conda/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

### template-Exasol-8-python-3.10-cuda-conda

The template-Exasol-8-python-3.10-cuda-conda flavor provides the language Python 3.10 with NVIDIA GPU support and with only absolute necessary packages. The flavor contains the Cuda-SDK and is prepared to work with the Nvidia-Driver, which however needs to be provided by the Host OS. This allows very simple customization because you control almost all dependencies. In contrast to template-Exasol-all-python-3.10, it also allows the installation of conda packages.

- template-Exasol-8-python-3.10-cuda-conda
  - Base Image: ubuntu:22.04
  - Compatible Exasol Versions: 8.?
  - Available languages: Python 3.10
  - Supported Package Manager: conda, pip
  - Without NVIDIA Driver
  - Installed CudaToolkit: 11.8
  - Installed CuDNN: 8.1.0.77
  - [Here](template-Exasol-8-python-3.10-cuda-conda/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

**Important**: Currently, there us no compatible Exasol DB version with this flavor (will come later).

### template-Exasol-all-r-4

The R-4-minimal flavor provides the language R 4.4 with only absolute necessary packages. This allows very simple customization because you control almost all dependencies.

- template-Exasol-all-r-4
  - Base Image: ubuntu:22.04
  - Compatible Exasol Versions: 8.\*, 7.1.\*
  - Available languages: R 4.4
  - [Here](template-Exasol-all-r-4/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.


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
