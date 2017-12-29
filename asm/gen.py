#!/usr/bin/env python

import io
import sys

a = str(io.open('solve', 'r+b').read())
start = 0x10c  # .text <main>
to = 0x288     # .eh_frame

sys.stdout.write(a[start:to])
