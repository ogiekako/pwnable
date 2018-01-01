#!/bin/bash

bin=my_asg

if [ "$1" == '--nocheck' ]; then
  bin=my_asg_no_check
fi

gcc -o "$bin" "$bin.c" -lseccomp
socat -v tcp-l:9025,reuseaddr,fork system:"strace $(pwd)/$bin 2> $(pwd)/$bin.log"
