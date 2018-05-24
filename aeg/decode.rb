#!/usr/bin/env ruby

require 'base64'

s = readlines() * ""
b = Base64.decode64(s)
print b
