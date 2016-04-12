#!/bin/bash

set -ex

pushd updated-playground
  git config --global user.email "dummy@rabbitmq.com"
  git config --global user.name "RabbitMQ CI"
  git co stable
  git merge test-concourse
  git branch -d test-concourse
popd
