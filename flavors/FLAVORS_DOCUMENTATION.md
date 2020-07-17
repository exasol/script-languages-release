# Flavors

A flavor is a description how a script language container gets build. That means, which packages are installed, which additional data is present and so on. Further, more do we add the UDFClient to it which will run the UDF Code inside the Database.

## Which flavors are available and what do they provide?

### Standard-EXASOL flavors

From the standard-EXASOL flavors, we built the built-in container which we deliver with each Exasol Version.
It provides the languages Java, Python 2/3 and R.

We provide three flavors for different Exasol versions. The flavors only specify the minimal Exasol version with which they are compatible.

- standard-EXASOL-7.0.0
  - Base Image: ubuntu:18.04
  - Compatible Exasol Versions: 7.0.0 (but likely also with 6.2.\* and 6.1.\*)
  - Available languages: Java 11, Python 2.7, Python 3.6 and R 3.4
  - [Here](standard-EXASOL-7.0.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

- standard-EXASOL-6.1.0
  - Base Image: ubuntu:18.04
  - Compatible Exasol Versions: 7.0.0, 6.2.\*, 6.1.\*
  - Available languages: Java 11, Python 2.7, Python 3.6 and R 3.4
  - [Here](standard-EXASOL-6.1.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

- standard-EXASOL-6.0.0
  - Base Image: ubuntu:16.04
  - Compatible Exasol Versions: 7.0.0, 6.2.\*, 6.1.\*, 6.0.\*
  - Available languages: Java 9, Python 2.7, Python 3.6 and R 3.2
  - [Here](standard-EXASOL-6.0.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

### Python3-ds-EXASOL flavors

The python3-ds-EXASOL flavors are focused on data-science use cases with Python 3 and provide more machine learning and data science packages than the standard-EXASOL flavor.

- python3-ds-EXASOL-6.1.0
  - Base Image: ubuntu:18.04
  - Compatible Exasol Versions: 7.0.0, 6.2.\*, 6.1.\*
  - Available languages: Python 3.6
  - [Here](https://github.com/exasol/script-languages/tree/master/flavors/python3-ds-EXASOL-6.1.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

- python3-ds-EXASOL-6.0.0
  - Base Image: ubuntu:16.04
  - Compatible Exasol Versions: 7.0.0, 6.2.\*, 6.1.\*, 6.0.\*
  - Available languages: Python 3.6
  - [Here](https://github.com/exasol/script-languages/tree/master/flavors/python3-ds-EXASOL-6.0.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

### Python3-ds-cuda-preview-EXASOL flavors

The Python3-ds-cuda-preview-EXASOL flavor is derived from the python3-ds-EXASOL flavor and provide libraries necessary for the usage of Nvidia GPUs and the Nvidia CUDA SDK within the UDFs. Additionally, Furthermore, it also provides GPU enabled versions of some data-science and machine-learning libraries.

- python3-ds-cuda-preview-EXASOL-
  - Base Image: ubuntu:18.04
  - Compatible Exasol Versions: 7.0.0, 6.2.\*, 6.1.\*
  - Available languages: Python 3.6
  - [Here](https://github.com/exasol/script-languages/tree/master/flavors/python3-ds-cuda-preview-EXASOL-6.1.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

### Fancyr-EXASOL flavors

- fancyr-ds-EXASOL-6.1.0
  - Base Image: ubuntu:18.04
  - Compatible Exasol Versions: 7.0.0, 6.2.\*, 6.1.\*
  - Available languages: R 3.5
  - [Here](fancyr-EXASOL-6.1.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.

- fancyr-ds-EXASOL-6.0.0
  - Base Image: ubuntu:16.04
  - Compatible Exasol Versions: 7.0.0, 6.2.\*, 6.1.\*, 6.0.\*
  - Available languages: R 3.5
  - [Here](fancyr-EXASOL-6.0.0/FLAVOR_DESCRIPTION.md) you can find more details about the flavor, such as the provided packages.
