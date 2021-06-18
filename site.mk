GLUON_SITE_PACKAGES := \
	gluon-mesh-babel \
	gluon-l3roamd \
	gluon-radvd \
	gluon-respondd \
	gluon-autoupdater \
	gluon-setup-mode \
	gluon-client-bridge \
	gluon-config-mode-core \
	gluon-config-mode-autoupdater \
	gluon-config-mode-hostname \
	gluon-config-mode-geo-location \
	gluon-config-mode-contact-info \
	gluon-config-mode-mesh-vpn \
	gluon-web-admin \
	gluon-web-autoupdater \
	gluon-web-wifi-config \
	gluon-web-network \
	gluon-status-page \
	respondd-module-airtime \
	gluon-iptables-clamp-mss-to-pmtu \
	ffffm-banner \
	ffffm-helper-tools \
	ffffm-keep-radio-channel \
	babeld \
	iwinfo \
	kmod-ipt-raw \
	prefixd \
	gluon-web-prefixd \
	gluon-464xlat-clat  \
	gluon-ddhcpd \
	gluon-mesh-vpn-wireguard

#	nodealert \  # breaks respondd response from yanic?
#	respondd-module-airtime \

#	ffffm-autoupdater-use-site-conf-branch \

include $(GLUON_SITEDIR)/specific_site.mk 


ifeq ($(GLUON_TARGET),x86-64)
GLUON_DEBUG := 1
endif

#####################################################################################################################

# This is the Babel branch

########################################################################
# BEGIN: "Generic homebrew build preparation"
#
# To build an own babel firmware please see:
# tbd.
########################################################################

# Homebrew Gluon firmware release name
HOMEBREW_GLUON_RELEASE := vHomebrew-babel

# For homebrew development add e.g. date and time
# (Note: Don't use the ':' char. It will break the build)
HOMEBREW_GLUON_RELEASE := $(HOMEBREW_GLUON_RELEASE)-$(shell date '+%m%d')

########################################################################
# END: "Generic homebrew build preparation"
#
# Admin/Support hint:
# With the few lines above you can identify exactly which branch of our
# site was used to create the homebrew firmware.
########################################################################

# Gluon release information.
# Allow overriding from the command line.
GLUON_RELEASE ?= $(HOMEBREW_GLUON_RELEASE)

# Autoupdater default branch.
# Allow overriding from the command line.
GLUON_BRANCH ?= experimental_babel

# Default priority for updates.
# Allow overriding from the command line.
GLUON_PRIORITY ?= 0

# Languages to include.
# Allow overriding from the command line.
GLUON_LANGS ?= en de

# Region information for regulatory compliance.
# Allow overriding from the command line.
GLUON_REGION ?= eu

# Build of image types.
# Allow overriding from the command line.
GLUON_DEPRECATED ?= upgrade

# Enable multidomain support
GLUON_MULTIDOMAIN = 1
