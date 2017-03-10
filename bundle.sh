#!/bin/sh

set -e

tar -cvf - \
	rabbitmq_codegen \
	rabbit_common \
	amqp_client \
	rabbit \
	"$@" \
	| gzip > PACKAGES/bundle-"$(cat version/version)".tar.gz
