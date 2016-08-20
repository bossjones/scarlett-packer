# scarlett-packer
Packer templates for creating scarlett vagrant images, and potentially raspberry pi preseed.cfg's later.

[Packer](https://www.packer.io/) templates for [Vagrant](https://www.vagrantup.com/) base boxes.

I borrowed quite a bit of logic from https://github.com/kaorimatz/packer-templates ( Thank you for figuring out all the very difficult stuff ). His work allowed me to focus more on the desktop side of things.

## Usage

Clone the repository:

    $ git clone https://github.com/bossjones/scarlett-packer && cd scarlett-packer

Build a machine image from the template in the repository:

    $ packer build -only=virtualbox-iso ubuntu-16.04-amd64.json

Add the built box to Vagrant:

    $ vagrant box add scarlett-1604 ubuntu-16.04-amd64-virtualbox.box

## Configuration

You can configure each template to match your requirements by setting the following [user variables](https://packer.io/docs/templates/user-variables.html).

 User Variable       | Default Value | Description
---------------------|---------------|----------------------------------------------------------------------------------------
 `compression_level` | 6             | [Documentation](https://packer.io/docs/post-processors/vagrant.html#compression_level)
 `cpus`              | 1             | Number of CPUs
 `disk_size`         | 40000         | [Documentation](https://packer.io/docs/builders/virtualbox-iso.html#disk_size)
 `headless`          | 0             | [Documentation](https://packer.io/docs/builders/virtualbox-iso.html#headless)
 `memory`            | 512           | Memory size in MB
 `mirror`            |               | A URL of the mirror where the ISO image is available

### Example

Build an uncompressed Arch Linux vagrant box with a 4GB hard disk using the VirtualBox provider:

    $ packer build -only=virtualbox-iso -var compression_level=0 -var disk_size=4000 ubuntu-16.04-amd64.json

## Pre-built Boxes

You can also use the pre-built boxes hosted on [Atlas](https://atlas.hashicorp.com/kaorimatz).

    $ vagrant box add bossjones/scarlett-1604
