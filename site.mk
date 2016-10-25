GLUON_SITE_PACKAGES := \
 	gluon-mesh-babel \
	ffffm-keep-radio-channel \
	ffffm-autoupdater-use-site-conf-branch \
	gluon-radvd \
	iwinfo \
	iptables \
	haveged \
	gluon-respondd \
	gluon-autoupdater \
	gluon-setup-mode \
	gluon-client-bridge-babel \
	gluon-config-mode-core \
	gluon-config-mode-autoupdater \
	gluon-config-mode-hostname \
	gluon-config-mode-geo-location \
	gluon-config-mode-contact-info \
	gluon-luci-admin \
	gluon-luci-autoupdater \
	gluon-luci-private-wifi \
	gluon-luci-wifi-config \
	gluon-luci-node-role \
	gluon-l3roamd \
	gluon-luci-portconfig \
	gluon-mesh-vpn-fastd \
	gluon-config-mode-mesh-vpn \
	gluon-luci-mesh-vpn-fastd \
	ffffm-banner \
	ffffm-fastd-auto-mtu \
	ffffm-additional-wifi-json-info \
	ffffm-enlarge-dns-cache \
	iputils-ping \
   	strace \




# wahrscheinlich nicht sinnvoll weil unsupported
#	ffffm-luci-switchconfig \

# batman-spezifische Teile ausbauen:
#	gluon-status-page \
#	ffffm-ath9k-broken-wifi-workaround \


# brauchen wir wohl mit babel nicht mehr
#	gluon-ebtables-filter-ra-dhcp \
# 	gluon-next-node \
#	gluon-ebtables-filter-multicast \
#	batmanspezifisch: gluon-client-bridge \
#
#
# wer weiß ob wir das nochmal brauchen? vielleicht für stats in einem
# babel-netz...
#	gluon-ffmcollectdconfig \
#	collectd5 \
#	collectd-mod-ping \
#	collectd-mod-interface \
#	collectd-mod-cpu \
#	collectd-mod-network \
#	collectd-mod-iwinfo \
#	collectd-mod-load \
#	collectd-mod-memory \
#	gluon-ffmautokey \


#####################################################################################################################

# This is the Dev branch

# Gluon Base Release
DEFAULT_GLUON_RELEASE := Homebrew-babel

# For homebrew development add e.g. date and time 
# (Note: Don't use the ':' char. It will break the build)
DEFAULT_GLUON_RELEASE := $(DEFAULT_GLUON_RELEASE)-$(shell date '+%Y.%m.%d')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Development branch information
GLUON_BRANCH ?= dev

# Default priority for updates.
# GLUON_PRIORITY ?= 0

# Languages to include
GLUON_LANGS ?= en de
