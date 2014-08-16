#!/usr/bin/env ruby

"""
Problem 5
Smallest multiple
Published on 30 November 2001 at 06:00 pm [Server Time]

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
"""

def main
  n = 20
  r = 19.downto(11)
  loop do
    return n if r.map { |x| n % x == 0 || break }
    n += 20
  end
end

if __FILE__ == $0
  puts main()
end
