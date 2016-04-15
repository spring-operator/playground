#!/bin/sh

set -ex

git clone updated-playground merged-playground

(
  cd merged-playground
  git config --global user.email "dummy@rabbitmq.com"
  git config --global user.name "RabbitMQ CI"
  git checkout stable
  git merge test-concourse
  git branch -d test-concourse
)
