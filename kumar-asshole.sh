#!/bin/sh
#
# Requires the mentioned script to be in your bin AND renamed to not include the extension 
# or ---- BUGFIXED --- it will just work if run from the directory as supplied by us. :p
#

DI=$(cd "`dirname $0`" && pwd);
EX=$(echo `basename $0` | sed -E "s/(.+)\.[^.]+$/\1/");

which "${EX}" && "${EX}" \
   || exec "${EX}.rb" \
   || printf "binary <%s> not located." "${EX}">&2;

cd -;
