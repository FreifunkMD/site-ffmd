Freifunk Magdeburg Firmware
===========================

How To Build
------------

This is building FFMD firmware in a nutshell. For more on options or building specific branches please refer to the build script, [the official Gluon repository](https://github.com/freifunk-gluon/gluon) at GitHub, or [the official Gluon documentation](https://gluon.readthedocs.org/).

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

**Note** since gluon 2015.1 the firmware is built for multiple targets. Now you need at least 45 GB of free space!

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
* 0.34: *gluon 2016.1*
  * see https://gluon.readthedocs.org/en/v2016.1/releases/v2016.1.html
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
