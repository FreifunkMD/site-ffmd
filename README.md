Freifunk Magdeburg Firmware
===========================

How To Build
------------

This is building FFMD firmware in a nutshell. For more on options or building specific branches please refer to the build script, [the official Gluon repository](https://github.com/freifunk-gluon/gluon) at GitHub, or [the official Gluon documentation](http://gluon.readthedocs.org/).

To compile the firmware you need a working build environment and packages for git, subversion, gawk, unzip, ncurses headers and zlib headers.

On Debian GNU/Linux, install like this:

    sudo aptitude install git subversion build-essential gawk unzip libz-dev libncurses-dev

Then download and build as follows:

    git clone git://github.com/freifunk-gluon/gluon.git         # Get the official Gluon repository
    cd gluon
    git clone git://github.com/FreifunkMD/site-ffmd.git site    # Get the Freifunk Magdeburg site repository
    make update                                                 # Fetch all repositories
    ./site/build.sh

In order to get a more verbose output, e.g. in case of build errors, you can call

    ./site/build.sh -v

The build script without any further arguments creates an `experimental` build.
Add the arguments `beta` or `stable` to create builds for the respective branches.
Any build other than experimental should be coordinated with the [FFMD community](http://md.freifunk.net).

For more information on the build script arguments, call

    ./site/build.sh -h

**Note:** Unless specified otherwise, the firmware is built for multiple targets.
You need at least 50 GB of free space in the directories `output/` and `openwrt/build_dir/`!

How To Build with Docker
------------------------

There is a prepared [Docker](https://www.docker.com/) image for building the FFMD firmware, which can be found in the [gluon-docker](https://github.com/FreifunkMD/gluon-docker) repository.

Clone the repository and follow the instruction in the respective [README.md](https://github.com/FreifunkMD/gluon-docker/blob/master/README.md).


Updating via SSH
----------------

If possible, use the [Config Mode](http://gluon.readthedocs.org/en/latest/features/configmode.html) to update your node.

In case you do not have physical access to your router, an update can be performed using SSH. You can set a password or a SSH public key in config mode and should do this before you make it physically unaccesible.

For the update connect to your device via IPv6 and issue the following commands, using the firmware file that matches your device:

    cd /tmp
    wget http://firmware.md.freifunk.net/stable/LATEST/sysupgrade/gluon-ffmd-0.28-tp-link-tl-wr841n-nd-v9-sysupgrade.bin
    sync; sysctl -w vm.drop_caches=3
    sysupgrade gluon-ffmd-0.28-tp-link-tl-wr841n-nd-v9-sysupgrade.bin

Be sure you know what you are doing!

You can also trigger the automatic update via ssh, just call this (or add -f for forced auto update):

    autoupdater

Verify a successful upgrade by
* checking that the node is back up and running (i.e. visible in the nodes list)
* checking that the host name and your login data are still available. A failed sysupgrade may leave the node in a state of running Freifunk with a weird configuration.

Changelog
---------

We excluded the [CHANGELOG](CHANGELOG.md) into another file to prepare automation.
