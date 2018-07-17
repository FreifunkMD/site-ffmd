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
* 0.38: *gluon 2016.2.7*
  * see https://gluon.readthedocs.io/en/v2016.1.6/releases/v2016.1.6.html
  * see https://gluon.readthedocs.io/en/v2016.2/releases/v2016.2.html
  * see https://gluon.readthedocs.io/en/v2016.2.1/releases/v2016.2.1.html
  * see https://gluon.readthedocs.io/en/v2016.2.2/releases/v2016.2.2.html
  * see https://gluon.readthedocs.io/en/v2016.2.3/releases/v2016.2.3.html
  * see https://gluon.readthedocs.io/en/v2016.2.4/releases/v2016.2.4.html
  * see https://gluon.readthedocs.io/en/v2016.2.5/releases/v2016.2.5.html
  * see https://gluon.readthedocs.io/en/v2016.2.6/releases/v2016.2.6.html
  * see https://gluon.readthedocs.io/en/v2016.2.7/releases/v2016.2.7.html
  * Added option for multithreading to build.sh
  * Added signing keys for Stefan Haun, Johann Wagner, and Franz Kuntke
  * Removed signing keys of Andreas, and Bastinat0r
* 0.37: *gluon 2016.1.5*
  * see https://gluon.readthedocs.io/en/v2016.1.5/releases/v2016.1.5.html
* 0.36: *gluon 2016.1.4*
  * see
    * http://gluon.readthedocs.org/en/v2016.1.2/releases/v2016.1.2.html
    * http://gluon.readthedocs.org/en/v2016.1.3/releases/v2016.1.3.html
    * http://gluon.readthedocs.org/en/v2016.1.4/releases/v2016.1.4.html
* 0.35: *gluon 2016.1.1*
  * see http://gluon.readthedocs.org/en/v2016.1.1/releases/v2016.1.1.html
* 0.34: *gluon 2016.1*
  * see http://gluon.readthedocs.org/en/v2016.1/releases/v2016.1.html
  * firmware build script: add option -d for dirclean
* 0.33: *gluon 2015.1.2*
  * see http://gluon.readthedocs.org/en/v2015.1.2/releases/v2015.1.2.html
* 0.32: *gluon 2015.1.1*
  * see http://gluon.readthedocs.org/en/v2015.1.2/releases/v2015.1.html and http://gluon.readthedocs.org/en/v2015.1.2/releases/v2015.1.1.html
  * reduced stable branch update priority from two weeks to one
  * enhanced version scheme for beta and experimental versions
  * improved Freifunk Magdeburg build script
* 0.31: *gluon 2014.4*
  * see http://gluon.readthedocs.org/en/v2015.1.2/releases/v2014.4.html
  * enabled `gluon-neighbour-info`
  * make IPv6 connections to gateways possible and add optional addresses
  * changed fastd auth method from gmac to umac
  * allow to configure a private WLAN which is bridged with the WAN uplink
* 0.30: *gluon 2014.3.1*
  * see http://gluon.readthedocs.org/en/v2015.1.2/releases/v2014.3.1.html
  * enable mesh VPN by default
  * set ffmd internal ntp servers actually reachable from nodes
* 0.29: *gluon 2014.3*
  * see http://gluon.readthedocs.org/en/v2015.1.2/releases/v2014.3.html
  * fix #31 (autoupdate per default anschalten)
* 0.28: *gluon 2014.2*
  * **note** first version with specific gluon version, previous were
    simply built from arbitrary master states
  * new build script to enable the above
  * added package gluon-firewall
  * replaced FFHL auto-update keys by FFMD keys
  * changed auto-update URLs for later use
* 0.27
  * added link to the registerseite
* 0.26
  * first ffmd gluon version
