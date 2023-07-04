#!/usr/bin/env ruby

regex = /School/

input = ARGV[0]

if input =~ regex
  puts "School"
else
  puts ""
end

