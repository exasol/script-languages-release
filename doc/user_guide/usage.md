## Using this Repository
### Prerequisites

We are using the [script-languages-container-tool](https://github.com/exasol/script-languages-container-tool) (exaslct) to build the containers. The script-languages-container-tool is already installed into this repository and will fetch all required Docker images when they are not already present. So, you only need to fulfil the [prerequisites for running the script-languages-container-tool](https://github.com/exasol/script-languages-container-tool#for-running).

Minimum requirements are:

* bash
  * on Linux >= 4.2
  * on MacOsX >= 3.2 (Please see limitations on [MacOsX](#macosx-limitations))
* Docker >= 17.05

#### Docker access

You need to have proper access to the Docker socket in order to build the script language containers. This can be achieved by running `exaslct` as root, by using the `sudo` command, or by adding the current user to the docker group. Check the [Docker documentation](https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user) for more information.

### Getting Started

If you only want to use pre-built containers, you can find them in the [release section](https://github.com/exasol/script-languages-release/releases) of this repository. However, if you want build custom container you need to clone this repository.

```bash
git clone --recurse-submodules https://github.com/exasol/script-languages-release.git 
```

Note: The option --recurse-submodules clones the submodule [script-languages](https://github.com/exasol/script-languages)

### How to upload prebuilt containers

Please see the [official Exasol documentation](https://docs.exasol.com/db/latest/database_concepts/udf_scripts/adding_new_packages_script_languages.htm?Highlight=container) about how to upload prebuilt containers to BucketFS.
If your database has internet access, you can also use [this UDF](https://github.com/exasol/exa-toolbox/blob/master/utilities/README.md#upload_github_release_file_to_bucketfs) to upload prebuilt script language containers directly from the [release page](https://github.com/exasol/script-languages-release/releases) 

### How to build an existing flavor?

First, you need to choose a flavor. Currently, we have several pre-defined flavors available, e.g., `standard-EXASOL-6.2.0`.
This project supports different versions of script language environments with different libraries and languages.
We call these versions _flavors_. The pre-defined flavors can be modified and extended to create customized flavors.
Each pre-defined flavor has its own set of Dockerfiles in a corresponding sub-directory of [flavors](../../flavors). 

**For more details about the flavors please checkout their [documentation](../../flavors/README.md).**

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
get installed, for an example look [here](../../flavors/standard-EXASOL-7.0.0/flavor_customization/packages). If you want to change or add other things you are able to add Dockerfile commands to
`flavors/<flavor>/flavor-customization/Dockerfile`, for an example look [here](../../flavors/standard-EXASOL-7.0.0/flavor_customization/Dockerfile). Please follow the instruction in there, if you add Dockerfile commands. 

**Note: For more details about the flavors please checkout their [documentation](../../flavors/README.md).**


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

### MacOsX Limitations
  
* On MacOsX all arguments (flavors path, output directory, etc.) must point to locations within the current directory (background is that the MacOsX version does not support mount binding additional directories).
