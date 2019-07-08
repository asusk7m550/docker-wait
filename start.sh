#!/bin/bash

for i in {1..60}
do
  DATE=$(date -u +"%FT%T.%NZ")
  if [ "${OUTPUT}" == "json" ]; then
    echo '{"time": "'$(date -u +"%FT%T.%NZ")'", "log": "sleep for 1m (nr '${i}')" }'
  elif [ "${OUTPUT}" == "yaml" ]; then
    echo -e "---\ntime: '$(date -u +"%FT%T.%NZ")'\nlog: sleep for 1m (nr ${i})"
  else
    echo "sleep for 1m (nr ${i})"
  fi
  sleep 60
done
