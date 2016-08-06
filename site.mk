GLUON_SITE_PACKAGES := \
    gluon-mesh-batman-adv-14 \
    gluon-respondd \
    gluon-autoupdater \
    gluon-setup-mode \
    gluon-config-mode-core \
    gluon-config-mode-autoupdater \
    gluon-config-mode-hostname \
    gluon-config-mode-mesh-vpn \
    gluon-config-mode-geo-location \
    gluon-config-mode-contact-info \
    gluon-ebtables-filter-multicast \
    gluon-ebtables-filter-ra-dhcp \
    gluon-luci-admin \
    gluon-luci-autoupdater \
    gluon-luci-portconfig \
    gluon-luci-private-wifi \
    gluon-luci-wifi-config \
    ffffm-ebtables-net-rules \
    ffffm-fastd-auto-mtu \
    ffffm-keep-radio-channel \
    ffffm-banner \
    ffffm-autoupdater-use-site-conf-branch \
    ffffm-additional-wifi-json-info \
    ffffm-ath9k-broken-wifi-workaround \
    ffffm-disable-80211b \
    ffffm-enlarge-dns-cache \
    ffffm-autoupdater-use-site-conf-branch \
    gluon-mesh-vpn-fastd \
    gluon-next-node \
    gluon-radvd \
    gluon-status-page \
    iwinfo \
    iptables \
    iputils-ping \
    haveged \


#####################################################################################################################

# This is the Dev branch

# Gluon Base Release
DEFAULT_GLUON_RELEASE := Homebrew-dev

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
