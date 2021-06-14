
Changelog
---------
* 0.41:
  * Updated i18n files
* 0.40: *gluon 2016.2.7-3-g35c9f9ae* aka *gluon 2016.2.x*
  * Remove IP addresses from site.conf. Gateways are discovered via DNS.
  * Add CONTRIBUTING.md to repository.
  * Remove obsolete sentence about node registration.
* 0.39: *gluon 2016.2.7*
  * Added [ffmd-packages](https://github.com/FreifunkMD/ffmd-packages) repository to the packages repository. This allows easy integration of custom packages.
  * Change MTU to 1312 with fastd on port 10001. This values still allows encapsulation in IPv6 and has been tested in other communities. With this change we hope to fix problems with IPv6 and KabelDeutschland. For further information see comments in [#50](https://github.com/FreifunkMD/site-ffmd/issues/50#issuecomment-412204836) and [#74](https://github.com/FreifunkMD/site-ffmd/pull/74#issuecomment-412209935).
  * Set vpn peer limit to 1 to reduce load on freifunk nodes.
  * Fix IPv6 address for gateway gw1.
  * It is no longer necessary to register a node's VPN key to get an upstream connection.
  * Include gluon-config-mode-notify and respondd-nodealert: Allow to set a timeout after which the node owner (based on contact data) should be notified when the node went offline.
  * Add signing key for Christof Schulze
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
