#!/bin/sh

#echo "Sleeping for 60 seconds…"
#sleep 60
#echo "Completed"
#exec python3 ./app.py

set -e

host="es"
port="9200"
cmd="$@"


echo $cmd