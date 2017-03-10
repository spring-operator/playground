#!/bin/sh

set -e

gzcat s3/bundle-*.tar.gz | tar xf -

make -C rabbit ct-fast DEPS_DIR="$PWD"
