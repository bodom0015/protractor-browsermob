#!/bin/sh

webdriver-manager update

#webdriver-manager start &

./bin/browsermob-proxy -port 8080 &

/protractor.sh
