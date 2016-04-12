#!/usr/bin/env bash
# this serves the build output and watches for changes to the source or tasks
# to rebuild

# exit with non-zero code if anything fails
set -e

case "$OSTYPE" in
  solaris*) OS="SOLARIS" ;;
  darwin*)  OS="OSX" ;;
  linux*)   OS="LINUX" ;;
  bsd*)     OS="BSD" ;;
esac


./configure.coffee dev && ninja -v;
http-server build/