#!/usr/bin/env ruby

"""
Problem 3
Largest prime factor
Published on 02 November 2001 at 06:00 pm [Server Time]

The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?
"""

def main
  300425737571.downto(1) do |n|
    return n if 600851475143%n == 0
  end
end

puts main()
