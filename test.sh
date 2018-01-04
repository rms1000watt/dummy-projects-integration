#!/usr/bin/env sh

curl http://localhost:9999/pizza
if [ $? -ne 0 ]; then
  echo "cURL Golang failed!"
  exit 1
fi

curl http://localhost:3000/
if [ $? -ne 0 ]; then
  echo "cURL NodeJS failed!"
  exit 1
fi

echo 
