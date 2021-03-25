# Exasol Script Language Flavors overview

Script Language Flavors are configurations of languages and libraries to be available in Script Languages for the Exasol database. We use a graph of Dockerfiles and other configuration files to describe a flavor. Exaslct uses these files to build the container.

## Which flavors are available and what do they provide?

Currently, we provide

- the `standard` flavors: These flavors include three langauage implementations: Java, Python, and R and a collection of typical libraries
- the `python-3.6-data-science` flavors: These flavors include Python3 as language and a number of typical data science and machine learning libraries
- the `r-3.5-data-science` flavors: These flavors include R as language and a large collection of popular R packages.

### Standard flavors

From the standard-EXASOL flavors, we built the built-in container which we deliver with each Exasol Version.
It provides the languages Java, Python 2/3 and R.

We provide three flavors for different Exasol versions. The flavors only specify the minimal Exasol version with which they are compatible.

- standard-EXASOL-7.0.0
  - Base Image: ubuntu:18.04
  - Compatible Exasol Versions: 7.0.\* (but likely also with 6.2.\*) 
  - Available languages: Java 11, Python 2.7, Python 3.6 and R 3.4
  - [Here](standard-EXASOL-7.0.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

- standard-EXASOL-6.2.0
  - Base Image: ubuntu:18.04
  - Compatible Exasol Versions: 7.0.\*, 6.2.\*
  - Available languages: Java 11, Python 2.7, Python 3.6 and R 3.4
  - [Here](standard-EXASOL-6.2.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

### Python-3.6-data-science flavors

The python-3.6-data-science-EXASOL flavors are focused on data-science use cases with Python3 and provide more machine learning and data science packages than the standard-EXASOL flavor.

- python-3.6-data-science-EXASOL-6.2.0
  - Base Image: ubuntu:18.04
  - Compatible Exasol Versions: 7.0.\*, 6.2.\*
  - Available languages: Python 3.6
  - [Here](https://github.com/exasol/script-languages/tree/master/flavors/python-3.6-data-science-EXASOL-6.2.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

#### Python-3.6-data-science-cuda flavors

The python-3.6-data-science-cuda-EXASOL flavor is derived from the python-3.6-data-science-EXASOL flavor and provides libraries necessary for the usage of Nvidia GPUs and the Nvidia CUDA SDK within the UDFs. Additionally, Furthermore, it also provides GPU enabled versions of some data-science and machine-learning libraries.

- python-3.6-data-science-cuda-EXASOL-6.2.0
  - Base Image: ubuntu:18.04
  - Compatible Exasol Versions: 7.0.\*, 6.2.\*
  - Available languages: Python 3.6
  - [Here](https://github.com/exasol/script-languages/tree/master/flavors/python-3.6-data-science-cuda-EXASOL-6.2.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

### R-3.5-data-science flavors

The R-3.5-data-science flavor provides the language R 3.5 and a large collection of pre-installed packages.

- r-3.5-data-science-EXASOL-6.2.0
  - Base Image: ubuntu:18.04
  - Compatible Exasol Versions: 7.0.\*, 6.2.\*
  - Available languages: R 3.5
  - [Here](r-3.5-data-science-EXASOL-6.2.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

### R-4.0-minimal flavors

The R-4.0-minimal flavor provides the language R 4.0 with only absolute necessary packages. This allows very simple customization because you control almost all dependencies.

- r-4.0-minimal-EXASOL-6.2.0
  - Base Image: ubuntu:18.04
  - Compatible Exasol Versions: 7.0.\*, 6.2.\*
  - Available languages: R 4.0
  - [Here](r-4.0-EXASOL-6.2.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

## Flavor or Language-specific features

Some flavors or Languages provide additional features.

### Pandas DataFrame support

All flavors which support Python3 as a language now have direct DataFrame support for accessing and emitting data in Exasol. Please see the [documentation](docs/py_dataframe.md) for more information and example usage.

## Naming convention

Script language flavors for different purposes come in different versions that are reflected by their name.
The naming convention is like this:

`<flavor-name>-EXASOL-<minimum-Exasol-Version>`

This allows us to provide new versions of a flavor when new features become available in Exasol that are not supported in older flavors.

So, in order to find the correct version of a flavor for your version of Exasol, simply take the latest container with version less than or equal to your Exasol version. So for Exasol 6.2.13, you would use the `*-EXASOL-6.2.0` flavors.
