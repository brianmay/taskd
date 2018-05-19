#!/bin/sh
set -x
if test "$*" = ""
then
    exec taskd server --data /var/lib/taskd --debug
else
    exec "$@"
fi
