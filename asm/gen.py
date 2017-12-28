#!/usr/bin/env python

import io
import sys

a = str(io.open('solve', 'r+b').read())
start = 0x2b1
to = 0x428

sys.stdout.write(a[start:to])
