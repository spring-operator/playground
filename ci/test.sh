#!/bin/bash

set -ex

pushd playground
  echo "quack" >> commentary.txt
popd
