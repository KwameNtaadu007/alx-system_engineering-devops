#!/usr/bin/env ruby
# A regular expression that is matches a given pattern

pattern = /hbt{2,5}n/
input = ARGV[0]
matches = input.scan(pattern)

puts matches.join("\n")

