#!/bin/bash -x

DEBUG=true && echo "Debug is on"
DEBUG=false || echo "Debug is off"

PS4='+ $BASH_SOURCE : $LINENO : '
TEST_VAR="test"
echo "$TEST_VAR"