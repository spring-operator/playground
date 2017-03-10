#!/bin/sh

set -e

tar zxf s3/bundle-*.tar.gz

make -C rabbit ct-fast DEPS_DIR="$PWD"
