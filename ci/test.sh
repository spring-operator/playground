#!/bin/sh

set -ex

echo `pwd`
echo `ls -laF`

mv $1 playground

(
  cd playground
  echo "egad, a new commit in $PWD!"
)

mv playground $1

exit 0
