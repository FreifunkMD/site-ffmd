GLUON_SITE_PACKAGES := \
	gluon-mesh-babel \
	gluon-radvd \
	haveged \
	iwinfo \
	iptables \
	gluon-respondd \
	gluon-autoupdater \
	gluon-setup-mode \
	gluon-client-bridge \
	gluon-config-mode-core \
	gluon-config-mode-autoupdater \
	gluon-config-mode-hostname \
	gluon-config-mode-geo-location \
	gluon-config-mode-contact-info \
	gluon-luci-admin \
	gluon-luci-autoupdater \
	gluon-luci-private-wifi \
	gluon-luci-wifi-config \
	gluon-l3roamd \
	gluon-luci-portconfig \
	gluon-mesh-vpn-fastd \
	gluon-config-mode-mesh-vpn \
	gluon-luci-mesh-vpn-fastd \
	gluon-status-page \
   	strace \
	libpcap

# lede-wechsel, da ist paketumbau erforderlich und die folgenden Pakete haben diesen Umbau noch nicht erfahren:
#ffffm-keep-radio-channel \
#	ffffm-autoupdater-use-site-conf-branch \
#	ffffm-banner \
#	ffffm-additional-wifi-json-info \
#

# ggf. einbauen wenn alles fertig ist
	# ffffm-fastd-auto-mtu \

# batman-spezifische Teile ausbauen:
#	ffffm-ath9k-broken-wifi-workaround \

ifeq ($(GLUON_TARGET),ar71xx-tiny)
# save some space to build ar71xx-tiny package even with strace and libpcap
GLUON_SITE_PACKAGES += -haveged
GLUON_SITE_PACKAGES += -libpcap
endif

ifeq ($(GLUON_TARGET),x86-64)
# support the usb stack on x86 devices
# and add a few common USB NICs
GLUON_SITE_PACKAGES += \
	haveged \
	kmod-usb-core \
	kmod-usb2 \
	kmod-usb-hid \
	kmod-usb-net \
	kmod-usb-net-asix \
	kmod-usb-net-dm9601-ether \
	kmod-cfg80211 \
	libnl \
	iftop \
	tcpdump 
endif

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

# region information for regulatory compliance
GLUON_REGION ?= eu

# Prefer ath10k firmware with 802.11s support
GLUON_ATH10K_MESH ?= 11s
