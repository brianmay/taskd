#!/bin/sh
set -x
echo hello world

if test "$*" = ""
then
    exec taskd server --data /var/lib/taskd --debug
else
    exec "$@"
fi
