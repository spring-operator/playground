#!/bin/sh

set -ex

git clone playground merged-playground

(
  cd merged-playground
  git config --global user.email "dummy@rabbitmq.com"
  git config --global user.name "RabbitMQ CI"
  git checkout stable
  git merge develop
)
