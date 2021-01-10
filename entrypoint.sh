#!/bin/bash

set -e

host="es"
port="9200"
cmd="$@"

>&2 echo "!!!!!!!! Check es for available !!!!!!!!"

until curl http://"$host":"$port"; do
  >&2 echo "ES is unavailable - sleeping"
  sleep 10
done

>&2 echo "ES is up - executing command"

exec $cmd