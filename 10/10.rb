#!/usr/bin/env ruby

"""
Problem 10
Summation of primes
Published on 08 February 2002 at 06:00 pm [Server Time]

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
Find the sum of all the primes below two million.
"""

require_relative '../7/7'

def main
  max = 2000000
  gen_primes(lambda { |x| x.last >= max }).reduce(:+)
end

if __FILE__ == $0
  puts main()
end
