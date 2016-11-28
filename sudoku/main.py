#!/usr/bin/env python
import socket
from z3 import *
import argparse
import solver

parser = argparse.ArgumentParser(description='Solve Sudoku problems.')
parser.add_argument('--local', dest='address',  action='store_const',
        const='localhost', default='pwnable.kr', help='Use localhost or not.')

args = parser.parse_args()

address = args.address
port = 9016

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
sock.connect((address, port))
print(sock.recv(10000))

sock.send("\n");

print('first: ' + sock.recv(10000))
sock.send("\n");

for i in range(101):
    data = sock.recv(10000)
    print data
    res = solver.solve_from_input(data.split('\n'))
    print 'sending: ' + res + '\n'
    sock.send(res + "\n")
    print sock.recv(10000)

exit()
