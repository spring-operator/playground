#!/bin/bash

set -ex

git clone updated-playground merged-playground

pushd merged-playground
  git config --global user.email "dummy@rabbitmq.com"
  git config --global user.name "RabbitMQ CI"
  git checkout stable
  git merge test-concourse
  git branch -d test-concourse
popd
