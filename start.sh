#!/bin/bash

for i in {1..60}
do
  DATE=$(date -u +"%FT%T.%NZ")
  if [ "${OUTPUT}" == "json" ]; then
    echo -e '{"timestamp": "'$(date -u +"%FT%T.%NZ")'", "message": "sleep for 1m (nr \"'${i}'\")"\n}'
  elif [ "${OUTPUT}" == "yaml" ]; then
    echo -e "---\ntimestamp: '$(date -u +"%FT%T.%NZ")'\nmessage: sleep for 1m (nr ${i})"
  else
    echo "sleep for 1m (nr ${i})"
  fi
  sleep 60
done
