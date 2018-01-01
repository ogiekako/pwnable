#!/usr/bin/env python

"""
Compute distribution With monte carlo
"""

import random

random.seed(187129)

def shuffle(a):
    n = len(a)
    for i in range(n-1):
        j = random.randint(0, n-1)
        t = a[j]
        a[j] = a[i]
        a[i] = t

cnt = 0

it = 100000
remain = list(range(256))
for i in range(it):
    a = list(range(256))
    shuffle(a)
    for i in range(128):
        remain[a[128 + i]] += 1

prob = list(range(256))
for i in range(256):
    prob[i] = 1.0 * remain[i] / it

print prob[254]
print prob[255]

import matplotlib.pyplot as plt
plt.plot(list(range(256)), prob)
plt.show()
