#!/bin/bash -x
#
# Copyright (c) 2015 GemTalk Systems, LLC. All Rights Reserved <dhenrich@gemtalksystems.com>.
#

set -e  # exit on error

# no backups on travis
cp $PROJECT_HOME/tests/sys/local/client/tode-scripts/* $GS_HOME/sys/local/client/tode-scripts
cp $PROJECT_HOME/tests/tode/* $GS_HOME/etc/GsDevKit_seaside31/tode

# use custom branch of tODE
cp $PROJECT_HOME/tests/sys/local/gsdevkit_bin/* $GS_HOME/sys/local/gsdevkit_bin
