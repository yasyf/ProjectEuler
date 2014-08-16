#!/usr/bin/env ruby

"""
Problem 1
Multiples of 3 and 5
Published on 05 October 2001 at 06:00 pm [Server Time]

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.
"""

def main
  (0..999).reduce do |total, n|
    [n%3, n%5].include?(0) ? total + n : total
  end
end

puts main()
