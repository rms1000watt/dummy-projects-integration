#!/usr/bin/env sh

HOST_ADDRESS=${HOST_ADDRESS:-localhost}

curl http://$HOST_ADDRESS:9999/pizza
if [ $? -ne 0 ]; then
  echo "cURL Golang failed!"
  exit 1
fi

curl http://$HOST_ADDRESS:3000/
if [ $? -ne 0 ]; then
  echo "cURL NodeJS failed!"
  exit 1
fi

echo 
