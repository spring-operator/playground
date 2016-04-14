#!/bin/bash

set -ex

pushd playground
  git diff stable
popd
