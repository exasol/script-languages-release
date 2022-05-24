
# EXASOL Script Languages 

###### Please note that this is an open source project which is officially supported by EXASOL. For any question, you can contact our support team.
## Overview

![drawing](script-languages-container-logo.png)

This project contains script-language containers for the user-defined functions (UDF's) that can be used in the EXASOL database (version 7.0.0 or later). Using script-language containers, user can extend the UDF's with additional libraries and tools, such as Python or R packages and their dependencies.

A script language container consists of a Linux container with a complete Linux distribution and all required libraries and a script client. The script client is responsible for the communication with the database and for executing the UDF code.

We provide in this repository several [flavors](flavors) of script-language containers, such as the current standard implementation of the [script client](https://github.com/exasol/script-languages/blob/master/exaudfclient/base) with support for Python 2/3, R und Java. A flavor contains the build description of a container. We will show below how to customize and build the different script-language containers. 

You can find pre-built containers in the [release section](https://github.com/exasol/script-languages-release/releases) of this repository.
If you are interested in the script client you find more details [here](https://github.com/exasol/script-languages/blob/master/exaudfclient/base/README.md).

## Features

* Build a script language container as docker images
* Export a script language container as an archive which can be used for extending Exasol UDFs
* Upload a script language container as an archive to the Exasol DB's BucketFS
* Generating the activation command for a script language container
* Can use Docker registries, such as Docker Hub, as a cache to avoid rebuilding image without changes
* Can push Docker images to Docker registries
* Run tests for you container against an Exasol DB (docker-db or external db)

## Table of Contents

### Information for Users

* [User Guide](doc/user_guide/user_guide.md)
* [Changelog](doc/changes/changelog.md)
