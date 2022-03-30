# Using Vagrant as Development Environment

## Vagrant

[Vagrant](https://www.vagrantup.com/) is an open-source software product for building and maintaining portable virtual software development environments. e.g., for VirtualBox, KVM, Hyper-V or VMware. It tries to simplify the software configuration management of virtualization in order to increase development productivity.

## Getting Started

We provide a [vagrant setup in this repository](../../vagrant). It installs all necassary dependencies needed to build a script-language-container into the Virtual Machine. You can then connect via SSH to run the [exaslct commands to build the container](usage.md). The code of this repository will be shared with VM through rsync.

We support the following Virtual Machine provider:

- [libvirt](https://libvirt.org/)

### Installing Vagrant

For installing Vagrant please follow the instrunctions on the [vagrant homepage](https://www.vagrantup.com/docs/installation).

#### Setting up Vagrant for libvirt

First, you should have both QEMU and Libvirt installed if you plan to run VMs on your local system. For instructions, refer to your Linux distribution's documentation.

Vagrant needs the plugin [vagrant-libvirt](https://github.com/vagrant-libvirt/vagrant-libvirt) to support libvirt. 

In many cases, it is enough to run the following command to install the plugin:


    ```
    vagrant plugin install vagrant-libvirt
    ```

In case, this doesn't work, please have a look at the [documentation of the plugin](https://github.com/vagrant-libvirt/vagrant-libvirt#readme).

#### Addtional plugins

We recommend to install also the following vagrant plugin to simplify working with Vagrant:

- [vagrant-scp](https://github.com/invernizzi/vagrant-scp): This plugin allows to copy files to and from the VM via scp

    ```
    vagrant plugin install vagrant-scp
    ```

### Using Vagrant with libvirt

1. Change into the [vagrant directory](../../vagrant)


    ```
    cd vagrant
    ```

2. Start the Vagrant VM


    ```
    vagrant up
    ```

3. Connect to the VM via SSH


    ```
    vagrant ssh
    ```


4. Run the [exaslct commands to build the container](usage.md)
5. Copy back the container with `vagrant scp`


    ```
    vagrant scp :file_on_vm.txt file_on_host.txt
    ```

6. If you modify the repository, you can run `vagrant rsync` to sync these changes to the VM


    ```
    vagrant rsync
    ```

    With `vagrant rsync-auto` vagrant observes the repository for changes and will sync them automatically.