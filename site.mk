GLUON_SITE_PACKAGES := \
    gluon-mesh-batman-adv-14 \
    gluon-alfred \
    gluon-respondd \
    gluon-autoupdater \
    gluon-setup-mode \
    gluon-config-mode-core \
    gluon-config-mode-autoupdater \
    gluon-config-mode-hostname \
    gluon-config-mode-mesh-vpn \
    gluon-config-mode-geo-location \
    gluon-config-mode-contact-info \
    ffffm-ebtables-net-rules \
    gluon-ebtables-filter-multicast \
    gluon-ebtables-filter-ra-dhcp \
    gluon-luci-admin \
    gluon-luci-autoupdater \
    gluon-luci-portconfig \
    gluon-luci-private-wifi \
    gluon-luci-wifi-config \
    gluon-luci-node-role \
    gluon-luci-mesh-vpn-fastd \
    ffffm-luci-switchconfig \
    ffffm-luci-set-mtu \
    ffffm-fastd-auto-mtu \
    ffffm-keep-radio-channel \
    ffffm-autoupdater-use-site-conf-branch \
    ffffm-banner \
    gluon-next-node \
    gluon-mesh-vpn-fastd \
    gluon-radvd \
    gluon-status-page \
    iwinfo \
    iputils-ping \
    iptables \
    ffffm-additional-wifi-json-info \
    haveged
 
#####################################################################################################################

# This is the dev branch
DEFAULT_GLUON_RELEASE := 2016.1.x-Homebrew

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
