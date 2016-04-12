#!/bin/bash

set -ex

pushd playground
  echo "quack" >> commentary.txt
  git config --global user.email ""
  git config --global user.name "RabbitMQ CI"
  git add .
  git commit -am "Added insightful commentary"
popd
