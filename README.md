# EXASOL Script Languages

###### Please note that this is an open source project which is officially supported by EXASOL. For any question, you can contact our support team.
## Overview

This project contains script-language containers for the user-defined functions (UDF's) that can be used in the EXASOL database (version 6.2.0 or later). Using script-language containers, user can extend the UDF's with additional libraries and tools, such as Python or R packages and their dependencies.

A script language container consists of a Linux container with a complete Linux distribution and all required libraries and a script client. The script client is responsible for the communication with the database and for executing the UDF code.

We provide in this repository several [flavors](flavors) of script-language containers, such as the current standard implementation of the [script client](https://github.com/exasol/script-languages/blob/master/exaudfclient/base) with support for Python 2/3, R und Java. A flavor contains the build description of a container. We will show below how to customize and build the different script-language containers. 

You can find pre-built containers in the [release section](https://github.com/exasol/script-languages-release/releases) of this repository.
If you are interested in the script client you find more details [here](https://github.com/exasol/script-languages/blob/master/exaudfclient/base/README.md).

## In a Nutshell
### Prerequisites

We are using the [script-languages-container-tool](https://github.com/exasol/script-languages-container-tool) (exaslct) to build the containers. The script-languages-container-tool is already installed into this repository and will fetch all required Docker images when they are not already present. So, you only need to fulfil the [prerequisites for running the script-languages-container-tool](https://github.com/exasol/script-languages-container-tool#for-running).
### Getting Started

If you only want to use pre-built containers, you can find them in the [release section](https://github.com/exasol/script-languages-release/releases) of this repository. However, if you want build custom container you need to clone this repository.

```bash
git clone --recurse-submodules https://github.com/exasol/script-languages-release.git 
```

Note: The option --recurse-submodules clones the submodule [script-languages](https://github.com/exasol/script-languages)

### How to build an existing flavor?

First, you need to choose a flavor. Currently, we have several pre-defined flavors available, e.g., `standard-EXASOL-6.2.0`.
This project supports different versions of script language environments with different libraries and languages.
We call these versions _flavors_. The pre-defined flavors can be modified and extended to create customized flavors.
Each pre-defined flavor has its own set of Dockerfiles in a corresponding sub-directory of [flavors](flavors). 

**For more details about the flavors please checkout their [documentation](flavors/README.md).**

Create the language container and export it to the local file system

```bash
./exaslct export --flavor-path=flavors/<flavor-name> --export-path <export-path>
```

or upload it directly into your BucketFS (currently http only, https follows soon)

```bash
./exaslct upload --flavor-path=flavors/<flavor-name> --database-host <hostname-or-ip> --bucketfs-port <port> \ 
                   --bucketfs-username w --bucketfs-password <password>  --bucketfs-name <bucketfs-name> \
                   --bucket-name <bucket-name> --path-in-bucket <path/in/bucket>
```

Once it is successfully uploaded, it will print the ALTER SESSION statement
that can be used to activate the script language container in the database.

### How to activate a script language container in the database

If you uploaded a container manually, you can generate the language activation statement with

```bash
./exaslct generate-language-activation --flavor-path=flavors/<flavor-name> --bucketfs-name <bucketfs-name> \
                                         --bucket-name <bucket-name> --path-in-bucket <path/in/bucket> --container-name <container-name>
```

where \<container-name> is the name of the uploaded archive without its file extension. To activate the language, execute the generated statement in your database session to activate the container for the current session or system wide.

This command will print a SQL statement to activate the language similar to the following one:

```bash
ALTER SESSION SET SCRIPT_LANGUAGES='<LANGUAGE_ALIAS>=localzmq+protobuf:///<bucketfs-name>/<bucket-name>/<path-in-bucket>/<container-name>?lang=<language>#buckets/<bucketfs-name>/<bucket-name>/<path-in-bucket>/<container-name>/exaudf/exaudfclient[_py3]';
```

### How to customize an existing flavor?

To customize an existing flavor you can add your specific needs to the Dockerfile in the `flavors/<flavor>/flavor_customization` directory. The easiest way to extend a flavor is by installing additional packages.
Under `flavors/<flavor>/flavor_customization/packages` you can find files which list packages which will 
get installed, for an example look [here](flavors/standard-EXASOL-7.0.0/flavor_customization/packages). If you want to change or add other things you are able to add Dockerfile commands to
`flavors/<flavor>/flavor-customization/Dockerfile`, for an example look [here](flavors/standard-EXASOL-7.0.0/flavor_customization/Dockerfile). Please follow the instruction in there, if you add Dockerfile commands. 

**Note: For more details about the flavors please checkout their [documentation](flavors/README.md).**


Your changes on the file system will then be merged with the file system of the script client
which contains all necessary libraries that are required to run the script language runtime.

Be aware that the merge will override all changes which may prevent the execution of the script client.
In details, this means if you change or remove packages or files in flavor-customization
which are necessary for the script client they will be restored in the final container.

After you finished your changes, rebuild with 

```bash
./exaslct export --flavor-path=flavors/<flavor-name>
```

or upload it directly into your BucketFS (currently http only, https follows soon)

```bash
./exaslct upload --flavor-path=flavors/<flavor-name> --database-host <hostname-or-ip> --bucketfs-port <port> \ 
                   --bucketfs-username w --bucketfs-password <password>  --bucketfs-name <bucketfs-name> \
                   --bucket-name <bucket-name> --path-in-bucket <path/in/bucket>
```

Note: The tool `exaslct` tries to reuse as much as possible of the previous build or tries to pull already existing images from Docker Hub.

**Please, refer to the [User Guide](https://github.com/exasol/script-languages-container-tool/blob/main/doc/user_guide/user_guide.md) of the script-languages-container-tool project for more detailed information about the usage of exalsct.**

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

* [User Guide of exaslct](https://github.com/exasol/script-languages-container-tool/blob/main/doc/user_guide/user_guide.md)
* [Changelog](doc/changes/changelog.md)