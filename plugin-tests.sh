#!/bin/sh

set -e

tar zxf s3/bundle-*.tar.gz

make -C "$PLUGIN" ct DEPS_DIR="$PWD"
