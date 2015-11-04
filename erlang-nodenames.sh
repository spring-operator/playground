#!/bin/sh
# vim:sw=4:et:

set -x

set | sort
echo

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
