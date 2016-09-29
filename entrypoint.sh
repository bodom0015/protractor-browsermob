#!/bin/sh

webdriver-manager update

./bin/browsermob-proxy -port 8080 &

/protractor.sh
