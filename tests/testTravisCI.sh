#!/bin/bash -x
#
# Copyright (c) 2015 GemTalk Systems, LLC. All Rights Reserved <dhenrich@gemtalksystems.com>.
#

set -e  # exit on error

uname -a   #gather info for bug 44185

osPrereqsSysSetup=$GS_HOME/bin/.osPrereqsSysSetup # if file exists, skip installation

if [ -e "$osPrereqsSysSetup" ]; then
  echo "Skip running osPrereqs, system already setup ($osPrereqsSysSetup exists)"
else
  # install OS prereqs which includes gdb, which should give us a C stack for 
  # bug 44491
  $GS_HOME/bin/utils/installOsPrereqs
fi

if [ "${STONENAME1}x" = "x" ] ; then
  export STONENAME1="travis1"
fi
if [ "${STONENAME2}x" = "x" ] ; then
  export STONENAME2="travis2"
fi
if [ "${STONENAME3}x" = "x" ] ; then
  export STONENAME3="travis3"
fi
if [ "${STONENAME4}x" = "x" ] ; then
  export STONENAME4="travis4"
fi

# pre-clone /sys/local, so that travis can install customizations (also test -c option)
$GS_HOME/bin/private/clone_sys_local -c https

# Customize the scripts used by tODE (https://github.com/dalehenrich/tode/issues/226)
$GS_HOME/etc/GsDevKit_seaside31/tests/travisCustomize.sh

case $TEST in
  Seaside3) $GS_HOME/etc/GsDevKit_seaside31/tests/testSeaside3.sh ;;
  Seaside3Upgrade) $GS_HOME/etc/GsDevKit_seaside31/tests/testSeaside3Upgrade.sh ;;
  *)
    echo "Unknown test: $TEST"
    exit 1
    ;;
esac

