#!/bin/sh
# vim:sw=4:et:

set -x

set | sort
echo

if test -f /etc/rabbitmq/rabbitmq-env.conf; then
    cat /etc/rabbitmq/rabbitmq-env.conf
    echo
fi

hostname
echo

hostname -s
echo

hostname -f
echo

erl -A0 -noinput -boot start_clean -sname rabbit -eval \
    'io:format("~s~n", [node()]),
     halt().'
echo

erl -A0 -noinput -boot start_clean -name rabbit -eval \
    'io:format("~s~n", [node()]),
     halt().'
echo

erl -A0 -noinput -boot start_clean -sname rabbit@ -eval \
    'io:format("~s~n", [node()]),
     halt().'
echo

erl -A0 -noinput -boot start_clean -name rabbit@ -eval \
    'io:format("~s~n", [node()]),
     halt().'
echo

erl -A0 -noinput -boot start_clean -eval \
    'net_kernel:start([rabbit, shortnames]),
     io:format("~s~n", [node()]),
     halt().'
echo

erl -A0 -noinput -boot start_clean -eval \
    'net_kernel:start([rabbit, longnames]),
     io:format("~s~n", [node()]),
     halt().'
echo

HOSTNAME=`env hostname`
NODENAME=rabbit@${HOSTNAME%%.*}
echo $NODENAME

. ./rabbitmq-env
echo

echo $RABBITMQ_NODENAME
echo

erl -A0 -noinput -boot start_clean -sname $RABBITMQ_NODENAME -eval \
    'io:format("~s~n", [node()]),
     halt().'
echo

erl -A0 -noinput -boot start_clean -eval \
    "net_kernel:start(['$RABBITMQ_NODENAME', shortnames]),
     io:format(\"~s~n\", [node()]),
     halt()."
echo
