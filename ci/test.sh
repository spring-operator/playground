#!/bin/sh

set -ex

cp -r $1 playground

(
  cd playground
  echo "egad, a new commit in $PWD!"
)

exit 0
