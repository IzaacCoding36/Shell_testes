#!/bin/bash

echo "Welcome to the Neo Stasis Hotel"
sleep 1
echo "Going up"
sleep 1

for x in {1..7};
do
  if [[ $x == 7 ]]; then
    continue
  fi
  echo "Floor $x"
  sleep 3
done