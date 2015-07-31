#!/bin/bash
# (pushd/popd needs an advanced shell)

set -e

SCRIPTDIR=$(dirname $0)

print_usage() {
    echo "Usage: $0 [GLUON_BRANCH]"
    echo ''
    echo 'If GLUON_BRANCH is not given, experimental is set.'
    echo ''
    echo 'Options:'
    echo '  -h  show this help'
    echo '  -v  verbose mode'
}

# command line options handling
ARGS=`getopt hv $*`
if [ $? -ne 0 ]
then
    print_usage
    exit 2
fi
set -- $ARGS

while true
do
    case "$1" in
        -h)
            print_usage
            exit 0
            ;;
        -v)
            VERBOSE='V=s'
            shift
            ;;
        --)
            shift; break;;
    esac
done

# set GLUON_BRANCH for manifest
if [ -z "$1" ]
then
    GLUON_BRANCH=experimental
    echo 'Set GLUON_BRANCH to "experimental"!'
else
    GLUON_BRANCH=$1
fi

case "xx$GLUON_BRANCH" in
    'xxstable')
        # one week
        GLUON_PRIORITY=7
        ;;
    'xxbeta')
        # three days
        GLUON_PRIORITY=3
        ;;
    'xxexperimental')
        # use default GLUON_PRIORITY set in site.mk
        ;;
    *)
        echo "Unknown GLUON_BRANCH '$1'."
        echo 'Use "stable", "beta", or "experimental"!'
        exit 1
        ;;
esac

export GLUON_BRANCH GLUON_PRIORITY

# get GLUON_CHECKOUT from site dir
pushd ${SCRIPTDIR}
eval `make -s -f helper.mk`
echo -e "GLUON_CHECKOUT: \033[32m${GLUON_CHECKOUT}\033[0m"
echo -e "GLUON_BRANCH: \033[32m${GLUON_BRANCH}\033[0m"
echo -e "GLUON_RELEASE: \033[32m${GLUON_RELEASE}\033[0m"

# wait five seconds to give user time to read the things above
for i in $(seq 3)
do
    sleep 1
    echo -n '.'
done
sleep 1
echo

# build
pushd ..

# ask if old images should be removed
echo -n 'Cleanup old image directory? (y/N) '
read ANSWER
if [ "${ANSWER}" = 'y' ]
then
    rm -vrf images/factory images/sysupgrade
fi

OLD_OPENWRT_RELEASE=$(grep 'RELEASE:=' include/toplevel.mk | sed -e 's/RELEASE:=//')
OLD_TARGETS=$(make 2>/dev/null | grep '^ [*] ' | cut -d' ' -f3)

echo -e "\033[32mPreparing gluon build ...\033[0m"
for target in ${OLD_TARGETS}
do
    make clean GLUON_TARGET=${target} $VERBOSE
done

git checkout master
git pull
git checkout ${GLUON_CHECKOUT}

NEW_TARGETS=$(make 2>/dev/null | grep '^ [*] ' | cut -d' ' -f3)
for target in ${NEW_TARGETS}
do
    make clean GLUON_TARGET=${target} $VERBOSE
done

make update $VERBOSE

# OpenWRT release branch check
NEW_OPENWRT_RELEASE=$(grep 'RELEASE:=' include/toplevel.mk | sed -e 's/RELEASE:=//')
if [ "${OLD_OPENWRT_RELEASE}" != "${NEW_OPENWRT_RELEASE}" ]
then
    echo '----'
    echo -e "Previous OpenWRT release checkout:\t${OLD_OPENWRT_RELEASE}"
    echo -e "Current OpenWRT release checkout:\t${NEW_OPENWRT_RELEASE}"
    echo -e "\033[40;93mOpenWRT releases differ. Recommended to rebuild toolchains!\033[0m"
    echo -n 'Clean the entire tree? (y/N) '
    read ANSWER
    if [ "${ANSWER}" = 'y' ]
    then
        make dirclean
    fi
fi
echo -e "OpenWRT release branch: \033[32m${NEW_OPENWRT_RELEASE}\033[0m"

for target in ${NEW_TARGETS}
do
    echo -e "Starting to build target \033[32m${target}\033[0m ..."
    make GLUON_TARGET=${target} -j4 $VERBOSE
done

echo -e "\033[32mMaking manifest ...\033[0m"
make manifest $VERBOSE

# ..
popd

# ${SCRIPTDIR}
popd

exit 0

# vim: set et sts=0 ts=4 sw=4 sr:
