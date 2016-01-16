#!/bin/sh

env=$1
APPIUM_BIN="$(npm bin)/appium"

${APPIUM_BIN} --log-level warn --tmp `pwd`/tmp  &
sleep 10
LATEST_APPID=$!

OS=ios rspec spec/test_spec.rb

kill $LATEST_APPID
sleep 5
rm -rf `pwd`/tmp
sleep 5
