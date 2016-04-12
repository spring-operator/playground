#!/bin/bash

set -ex

pushd playground
  echo "quack" >> commentary.txt
  git config --global user.email "dummy@rabbitmq.com"
  git config --global user.name "RabbitMQ CI"
  git commit -am "Added insightful commentary"
popd
