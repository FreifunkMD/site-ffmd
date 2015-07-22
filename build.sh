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
for i in $(seq 5)
do
    sleep 1
    echo -n '.'
done
sleep 1
echo

# build
pushd ..

TARGETS=$(make 2>/dev/null | grep '^ [*] ' | cut -d' ' -f3)

echo -e "\033[32mpreparing gluon build ...\033[0m"
for target in ${TARGETS}
do
    make clean GLUON_TARGET=${target} $VERBOSE
done

git checkout master
git pull
git checkout ${GLUON_CHECKOUT}

for target in ${TARGETS}
do
    make clean GLUON_TARGET=${target} $VERBOSE
done

make update $VERBOSE

for target in ${TARGETS}
do
    echo -e "starting to build target \033[32m${target}\033[0m ..."
    make GLUON_TARGET=${target} -j4 $VERBOSE
done

echo -e "\033[32mmaking manifest ...\033[0m"
make manifest $VERBOSE

# ..
popd

# ${SCRIPTDIR}
popd

exit 0

# vim: set et sts=0 ts=4 sw=4 sr:
