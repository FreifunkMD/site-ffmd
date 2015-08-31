# http://stackoverflow.com/questions/18136918/how-to-get-current-directory-of-your-makefile
this_dir := $(shell dirname $(abspath $(lastword $(MAKEFILE_LIST))))

##	GLUON_SITE_PACKAGES
#		specify gluon/openwrt packages to include here
#		The gluon-mesh-batman-adv-* package must come first because of the dependency resolution

GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-14 \
	gluon-alfred \
	gluon-announced \
	gluon-autoupdater \
	gluon-config-mode-autoupdater \
	gluon-config-mode-contact-info \
	gluon-config-mode-core \
	gluon-config-mode-geo-location \
	gluon-config-mode-hostname \
	gluon-config-mode-mesh-vpn \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-luci-admin \
	gluon-luci-autoupdater \
	gluon-luci-portconfig \
	gluon-luci-private-wifi \
	gluon-luci-wifi-config \
	gluon-next-node \
	gluon-neighbour-info \
	gluon-mesh-vpn-fastd \
	gluon-radvd \
	gluon-setup-mode \
	gluon-status-page \
	haveged \
	iptables \
	iwinfo

DEFAULT_GLUON_CHECKOUT := v2015.1.2

# Allow overriding the checkout from the command line
GLUON_CHECKOUT ?= $(DEFAULT_GLUON_CHECKOUT)

# replace magic in version number as follows:
# v0.31-4-gf390c9d				--> 0.31+4-gf390c9d
# v0.32-beta.1 					--> 0.32~beta.1
# v0.30-beta.1-2-g11c8a08-dirty	--> 0.30~beta.1+2-g11c8a08-dirty
DEFAULT_GLUON_RELEASE := $(shell git --git-dir=$(this_dir)/.git \
		--work-tree=$(this_dir) describe --tags --always --dirty \
		--match "v*" \
		| sed -e 's/^\(v[^-]\+\)-\([0-9]\+-g[0-9a-f]\{7\}.*\)$$/\1+\2/' \
		| sed -e 's/^\(v[^-]\+\)-\(beta.*\)$$/\1~\2/' \
		| sed -e 's/^\(v[^~]\+~beta[^-]\+\)-\([0-9]\+-g[0-9a-f]\{7\}.*\)$$/\1+\2/' \
		| sed -e 's/^v//')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Default priority for updates.
GLUON_PRIORITY ?= 0

# Languages to include
GLUON_LANGS ?= en de
