#!/usr/bin/env ruby
# A regular expression that is matches a given pattern

regex = /School/

input = ARGV[0]

if input =~ regex
  puts "School"
else
  puts ""
end

