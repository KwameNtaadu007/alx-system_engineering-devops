#0x06. Regular expression

##This exercise is about building a regular expression using Oniguruma, a regular expression library that which is used by Ruby by default. Note that other regular expression libraries sometimes have different properties.

The Ruby code that you should use is as follows:

-#!/usr/bin/env ruby puts ARGV[0].scan(/127.0.0.[0-9]/).join

The ARGV[0] variable contains the first argument that is passed to the script. In this case, the first argument is the IP address that you want to match. The scan() method will search the string for matches to the regular expression. The join() method will join the matches together into a single string.

To run the script, you can use the following command:

./example.rb 127.0.0.1

This will print the IP address 127.0.0.1 to the console.

You can also pass other IP addresses to the script. For example, the following command will print the IP address 127.0.0.2 to the console:

./example.rb 127.0.0.2

The regular expression that is used in this exercise matches any string that starts with 127.0.0. and then contains one or more digits. For example, the following strings would all match the regular expression:

-127.0.0.1
-127.0.0.2
-127.0.0.100
The regular expression would not match the following strings:

-127.0.0.a
-127.0.0.
-127.0.1.1
The goal of this exercise is to build a regular expression that can match any IP address that starts with 127.0.0.. The regular expression that is used in this exercise does this successfully.


