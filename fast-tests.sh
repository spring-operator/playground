#!/bin/sh

set -e

xzcat s3/bundle-*.tar.xz | tar xf -

make -C rabbit ct-fast DEPS_DIR="$PWD"
