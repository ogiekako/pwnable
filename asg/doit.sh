#!/bin/bash

pass=$(cat password)
sshpass -p $pass ssh asg@pwnable.kr -p2222 -t 'mkdir -p /tmp/oka_asg'

sshpass -p $pass scp -P2222 solve.py main.py try.sh asg@pwnable.kr:/tmp/oka_asg/

sshpass -p $pass ssh asg@pwnable.kr -p2222 -t 'cd /tmp/oka_asg; ./try.sh'
