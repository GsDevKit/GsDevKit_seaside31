#!/bin/bash -x
#
# Copyright (c) 2015 GemTalk Systems, LLC. All Rights Reserved <dhenrich@gemtalksystems.com>.
#

set -e  # exit on error

export PATH=$PROJECT_HOME/bin:$PATH

installServerSeaside -c https -z 8383 seaside $GS_OLD_VERSION

seasideUpgrade seaside upgrade $GS_VERSION
