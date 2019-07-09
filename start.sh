#!/bin/bash

for i in {1..60}
do
  DATE=$(date -u +"%FT%T.%NZ")
  if [ "${OUTPUT}" == "json" ]; then
    echo -e '{\n  "time": "'$(date -u +"%FT%T.%NZ")'",\n  "log": "sleep for 1m (nr '${i}')"\n}'
  elif [ "${OUTPUT}" == "yaml" ]; then
    echo -e "---\ntime: '$(date -u +"%FT%T.%NZ")'\nlog: sleep for 1m (nr ${i})"
  else
    echo "sleep for 1m (nr ${i})"
  fi
  sleep 60
done
