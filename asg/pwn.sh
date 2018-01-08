#!/bin/bash

if [ "$1" == "--send" ]; then
  sshpass -p$(cat password) ssh -p2222 asg@pwnable.kr -t 'mkdir -p /tmp/oka_asg' 
  sshpass -p$(cat password) scp -P2222 try.sh main.py solver.py gen.py asg@pwnable.kr:/tmp/oka_asg/
  exit 0
fi

sshpass -p$(cat password) ssh -p2222 asg@pwnable.kr -t 'cd /tmp/oka_asg; ./try.sh' 
