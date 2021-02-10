# Exasol Script Language Flavors overview

Script Language Flavors are configurations of languages and libraries to be available in Script Languages for the Exasol database. We use a graph of Dockerfiles and other configuration files to describe a flavor. Exaslct uses these files to build the container.

## Which flavors are available and what do they provide?

Currently, we provide

- the `standard` flavors: These flavors include three langauage implementations: Java, Python, and R and a collection of typical libraries
- the `python3-ds` flavors: These flavors include Python3 as language and a number of typical data science and machine learning libraries
- the `fancyr` flavors: These flavors include R as language and a large collection of popular R packages.

### Standard flavors

From the standard-EXASOL flavors, we built the built-in container which we deliver with each Exasol Version.
It provides the languages Java, Python 2/3 and R.

We provide three flavors for different Exasol versions. The flavors only specify the minimal Exasol version with which they are compatible.

- standard-EXASOL-7.0.0
  - Base Image: ubuntu:18.04
  - Compatible Exasol Versions: 7.0.\* (but likely also with 6.2.\* and 6.1.\*)
  - Available languages: Java 11, Python 2.7, Python 3.6 and R 3.4
  - [Here](standard-EXASOL-7.0.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

- standard-EXASOL-6.2.0
  - Base Image: ubuntu:18.04
  - Compatible Exasol Versions: 7.0.\*, 6.2.\*, 6.1.\*
  - Available languages: Java 11, Python 2.7, Python 3.6 and R 3.4
  - [Here](standard-EXASOL-6.2.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

- standard-EXASOL-6.1.0
  - Base Image: ubuntu:18.04
  - Compatible Exasol Versions: 7.0.\*, 6.2.\*, 6.1.\*
  - Available languages: Java 11, Python 2.7, Python 3.6 and R 3.4
  - [Here](standard-EXASOL-6.1.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

### Python3-ds flavors

The python3-ds-EXASOL flavors are focused on data-science use cases with Python3 and provide more machine learning and data science packages than the standard-EXASOL flavor.

- python3-ds-EXASOL-6.1.0
  - Base Image: ubuntu:18.04
  - Compatible Exasol Versions: 7.0.0, 6.2.\*, 6.1.\*
  - Available languages: Python 3.6
  - [Here](https://github.com/exasol/script-languages/tree/master/flavors/python3-ds-EXASOL-6.1.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

#### Python3-ds-cuda-preview flavors

The Python3-ds-cuda-preview-EXASOL flavor is derived from the python3-ds-EXASOL flavor and provide libraries necessary for the usage of Nvidia GPUs and the Nvidia CUDA SDK within the UDFs. Additionally, Furthermore, it also provides GPU enabled versions of some data-science and machine-learning libraries.

- python3-ds-cuda-preview-EXASOL-6.1.0
  - Base Image: ubuntu:18.04
  - Compatible Exasol Versions: 7.0.0, 6.2.\*, 6.1.\*
  - Available languages: Python 3.6
  - [Here](https://github.com/exasol/script-languages/tree/master/flavors/python3-ds-cuda-preview-EXASOL-6.1.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

### Fancyr flavors

- fancyr-ds-EXASOL-6.1.0
  - Base Image: ubuntu:18.04
  - Compatible Exasol Versions: 7.0.0, 6.2.\*, 6.1.\*
  - Available languages: R 3.5
  - [Here](fancyr-EXASOL-6.1.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

## Flavor or Language-specific features

Some flavors or Languages provide additional features.

### Pandas DataFrame support

All flavors which support Python3 as a language now have direct DataFrame support for accessing and emitting data in Exasol. Please see the [documentation](docs/py_dataframe.md) for more information and example usage.

## Naming convention

Script language flavors for different purposes come in different versions that are reflected by their name.
The naming convention is like this:

`<flavor-name>-EXASOL-<minimum-Exasol-Version>`

This allows us to provide new versions of a flavor when new features become available in Exasol that are not supported in older flavors.
For instance, the flavors for Exasol 6.1.0 support newer Linux distributions as their basis and hence, overall contain newer versions of libraries and languages.

So, in order to find the correct version of a flavor for your version of Exasol, simply take the latest container with version less than or equal to your Exasol version. So for Exasol 6.1.1, you would use the `*-EXASOL-6.1.0` flavors.
