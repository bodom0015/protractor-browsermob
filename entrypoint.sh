#!/bin/sh

#Xvfb :0 -ac -screen 0 1024x768x24 &
#export DISPLAY=:0.0

#node ./node_modules/protractor/bin/webdriver-manager update

node ./node_modules/protractor/bin/webdriver-manager start --standalone &

#./bin/browsermob-proxy -port 8888 &

#protractor ./protractor.conf.js

/protractor.sh
