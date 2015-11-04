#!/bin/bash -x
#
# Copyright (c) 2015 GemTalk Systems, LLC. All Rights Reserved <dhenrich@gemtalksystems.com>.
#

set -e  # exit on error

export PATH=$PROJECT_HOME/bin:$PATH

installServerSeaside -h
seasideCreateStone -h
seasideInstall -h
seasideLoad -h
seasideUpdate -h
seasideUpgrade -h
seasideWebServer -h

installServerSeaside -c https -z 8383 seaside $GS_VERSION

# Run Seaside unit tests
seasideTest seaside  # have to install the Tests group!

seasideUpdate seaside 

# test seaside webServer
seasideWebServer seaside --help
seasideWebServer seaside --start
# Doesn't appear that this works on travis ... can't connect to host
# curl http://127.0.0.1:8383
seasideWebServer seaside --stop

$GS_HOME/bin/private/gsDevKitTodeCommandLine todeIt seaside << EOF
/home/seaside/seasideNewProject -h
/home/seaside/seasideNewProject Foo
EOF
