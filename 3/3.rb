#!/usr/bin/env ruby

"""
Problem 3
Largest prime factor
Published on 02 November 2001 at 06:00 pm [Server Time]

The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?
"""

def main
  n = 600851475143
  i = 2
  loop do
    return n if i > Math.sqrt(n).to_i
    if n%i == 0
      n = n/i
    else
      i += 1
    end
  end
end

puts main()
