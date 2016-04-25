#!/bin/sh

set -ex

(
  cd playground
  git config --global user.email "dummy@rabbitmq.com"
  git config --global user.name "RabbitMQ CI"
  echo "quack" >> commentary.txt
  git add commentary.txt
  git commit -m "Add insightful commentary"
)
