#!/bin/sh

set -e

tar zxf s3/bundle-*.tar.gz

make -C rabbit ct-slow DEPS_DIR="$PWD"
