## Building an SLC Via CLI Command `exaslct`

### Prerequisites

`exaslct` is maintained in GitHub repository [script-languages-container-tool](https://github.com/exasol/script-languages-container-tool). It is already installed into this repository and will download all required Docker images.

See the [system requirements](https://github.com/exasol/script-languages-container-tool#for-running) for running `exaslct`.

#### Docker Access

`exaslct` uses the [Docker Service](https://docs.docker.com/) which needs to be available on your system.

To permit your user account to work with Docker images and containers you need to:
* Either add the user to the docker group,
* Execute the commands with `sudo`
* Or as user `root`.

See the [Docker documentation](https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user) for more information.

### Downloading and Installing This Repository (SLCR)

You can download pre-built SLCs in the [releases](https://github.com/exasol/script-languages-release/releases) of this repository (*SLCR* for short).

If you want to build custom containers, you need to clone the SLCR repository.

```shell
git clone --recurse-submodules https://github.com/exasol/script-languages-release.git
```

Note: Option `--recurse-submodules` clones the submodule [script-languages](https://github.com/exasol/script-languages).

The following command uses [Poetry](https://python-poetry.org/docs/) to create a virtual environment and install the components and dependencies of SLCR:
```shell
cd script-languages-release
poetry env use $(which python3)
poetry install
```

You can also use other tools for this task.

### Deploying an SLC to an Exasol Database Instance

An SLC is deployed to an Exasol database instance by:
1. Uploading it to the BucketFS and
2. Activating the SLC by setting a *language alias*

There are multiple ways to accomplish these tasks:
* Use `exaslct` to [build and deploy](https://exasol.github.io/script-languages-container-tool/main/user_guide/user_guide.html#how-to-build-an-existing-flavor) and to [activate](https://exasol.github.io/script-languages-container-tool/main/index.html#how-to-activate-a-script-language-container-in-the-database) the SLC.
* Follow the [official Exasol documentation](https://docs.exasol.com/db/latest/database_concepts/udf_scripts/adding_new_packages_script_languages.htm?Highlight=container)
* Use the [Exa-toolbox](https://github.com/exasol/exa-toolbox/blob/master/utilities/README.md#upload_github_release_file_to_bucketfs)

In all cases, you can download pre-built SLCs from the [releases](https://github.com/exasol/script-languages-release/releases) of SLCR.

### Building an SLC

SLCR supports different variants of SLCs containing different libraries and supporting different programming languages, e.g. Python, Java, etc.

Each variant is called a _flavor_ and the related Dockerfiles are in the resp. subdirectory below [flavors/](../../flavors).

Currently, there are two groups of flavors:

| Flavor Group | Example                           | Packages   | Installation         | Customization?               |
|--------------|-----------------------------------|------------|----------------------|------------------------------|
| Standard     | `standard-EXASOL-all`             | Predefined | Available by default | Not intended                 |
| Template     | `template-Exasol-all-python-3.10` | Minimal    | Manually on demand   | Can be modified and extended |

See [Details about available flavors](../../flavors/README.md).

The next section explains how to customize a flavor.

### Customizing a Flavor

To customize a flavor you can edit the Dockerfile in directory `flavors/<flavor>/flavor_customization`.

A popular requirement is installing additional packages.

### Adding New Packages

File `packages.yml` contains the list of packages to be installed into the SLC, e.g. in the [template for R4](../../flavors/template-Exasol-all-r-4/packages.yml).  <br />
There are multiple *build steps*.  Usually at the end of the file there is a build step `flavor_customization`.  <br />
You can add new packages here.

#### Dockerfile

The `flavor_customization/Dockerfile` will execute [exaslpm](https://github.com/exasol/script-languages-package-management) to install the additional packages.<br />
You can also add other commands to the Dockerfile, the [template for R4](../../flavors/template-Exasol-all-r-4/flavor_customization/Dockerfile) contains instructions.<br />
See also [details about available flavors](../../flavors/README.md).

#### Copying Changes

All contents in your local file system will be copied into the file system of the **script client** incl. all libraries that are required to run the script language runtime.<br />
The copy algorithm, however, will ignore changes preventing to run the script client.<br />
If you modify or remove critical packages or other files in `flavor-customization`, the copy algorithm will override these changes in the final SLC.

#### Rebuilding the SLC Using the Customized Flavor

After you finished your changes, rebuild the SLC with

```shell
poetry run -- exaslct export --flavor-path=flavors/<flavor-name>
```

or deploy it directly:

```shell
poetry run -- exaslct deploy \
    --flavor-path=flavors/<flavor-name> \
    --database-host <hostname-or-ip> \
    --bucketfs-port <port> \
    --bucketfs-username w \
    --bucketfs-password <password>  \
    --bucketfs-name <bucketfs-name> \
    --bucket-name <bucket-name> \
    --path-in-bucket <path/in/bucket>
```

To save time, `exaslct` reuses artifacts from previous builds and also pulls images from Docker Hub.

Please, refer to the [SLCT User Guide](https://exasol.github.io/script-languages-container-tool/main/user_guide/user_guide.html) for more detailed information about the usage of `exaslct`.

### macOS Limitations

macOS does not support mount binding additional directories.

Hence all arguments must point to locations within the current directory: flavors path, output directory, etc.
