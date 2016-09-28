#!/bin/sh

webdriver-manager update

./browsermob-proxy -port 8080

npm test
