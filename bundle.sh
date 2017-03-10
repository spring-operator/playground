#!/bin/sh

set -e

tar -cvf - \
	rabbitmq_codegen \
	rabbit_common \
	amqp_client \
	rabbit \
	"$@" \
	| xz > PACKAGES/bundle-"$(cat version/version)".tar.xz
