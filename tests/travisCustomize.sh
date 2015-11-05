#!/bin/bash -x
#
# Copyright (c) 2015 GemTalk Systems, LLC. All Rights Reserved <dhenrich@gemtalksystems.com>.
#

set -e  # exit on error

# no backups on travis
cp $GS_HOME/tests/sys/local/client/tode-scripts/* $GS_HOME/sys/local/client/tode-scripts
cp $GS_HOME/tests/tode/* $GS_HOME/etc/GsDevKit_seaside31/tode

# use custom branch of tODE
cp $GS_HOME/tests/sys/local/gsdevkit_bin/* $GS_HOME/sys/local/gsdevkit_bin

git config --global user.email "GsDevKit_seaside@example.com"
git config --global user.name "GsDevKit seaside"
