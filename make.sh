#!/bin/sh

set -e

tar zxf s3/bundle-*.tar.gz

make -C "$ERLANG_APP" "$MAKE_TARGET" DEPS_DIR="$PWD"
