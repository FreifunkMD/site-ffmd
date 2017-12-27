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
	gluon-web-prefixd \
	gluon-config-mode-hostname \
	gluon-config-mode-geo-location \
	gluon-config-mode-contact-info \
	gluon-web-admin \
	gluon-web-autoupdater \
	gluon-web-private-wifi \
	gluon-web-wifi-config \
	gluon-l3roamd \
	gluon-mesh-vpn-fastd \
	gluon-config-mode-mesh-vpn \
	gluon-web-mesh-vpn-fastd \
	gluon-status-page \
	ffffm-banner \
	ffffm-keep-radio-channel \
	prefixd

# ffffm-autoupdater-use-site-conf-branch \

ifeq ($(GLUON_TARGET),ar71xx-tiny)
# save some space to build ar71xx-tiny package
GLUON_SITE_PACKAGES += -libpcap
GLUON_SITE_PACKAGES += -strace
endif

ifeq ($(GLUON_TARGET),x86-64)
# support the usb stack on x86 devices
# and add a few common USB NICs
GLUON_DEBUG := 1
GLUON_SITE_PACKAGES += \
	kmod-usb-core \
	kmod-usb2 \
	kmod-usb-hid \
	kmod-usb-net \
	kmod-usb-net-asix \
	kmod-usb-net-dm9601-ether \
	kmod-cfg80211 \
	libnl \
	gdb \
	valgrind \
	screen \
	iftop \
	tcpdump \
	binutils \
	strace
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
GLUON_BRANCH ?= babel

# Default priority for updates.
# GLUON_PRIORITY ?= 0

# Languages to include
GLUON_LANGS ?= en de

# region information for regulatory compliance
GLUON_REGION ?= eu

# Prefer ath10k firmware with 802.11s support
GLUON_ATH10K_MESH ?= 11s
