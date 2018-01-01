#!/bin/bash

# ./try.sh --test

arg=''

if [ "$1" == '--test' ]; then
  arg='--test'
fi

trap "exit" INT
for i in $(seq 1 1000); do
  echo $i 1>&2;
  ./main.py $arg
  if [ $? -ne 0 ]; then
    break
  fi
done

