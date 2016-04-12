#!/bin/bash

set -ex

git clone playground updated-playground

pushd updated-playground
  git checkout -b test-concourse
  echo "quack" >> commentary.txt
  git config --global user.email "dummy@rabbitmq.com"
  git config --global user.name "RabbitMQ CI"
  git commit -am "Added insightful commentary"
popd
