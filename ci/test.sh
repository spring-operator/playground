#!/bin/bash

set -ex

pushd playground
  echo "quack" >> commentary.txt
  git add .
  git commit -m "Added insightful commentary"
popd
