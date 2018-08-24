
Changelog
---------
* 0.39: *gluon 2016.2.7*
  * Added [ffmd-packages](https://github.com/FreifunkMD/ffmd-packages) repository to the packages repository. This allows easy integration of custom packages.
  * Change MTU to 1312 with fastd on port 10001.
  * Removed Registration of VPN keys. It is not longer necessary to register the VPN keys.
  * set vpn peer limit to 1 to reduce load on freifunk nodes.
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
