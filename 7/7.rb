#!/usr/bin/env ruby

"""
Problem 7
10001st prime
Published on 28 December 2001 at 06:00 pm [Server Time]

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
What is the 10 001st prime number?
"""

def main
  target = 10001
  primes = [2]
  i = 3
  loop do
    primes << i if primes.map { |x| i % x != 0 || break }
    return primes.last if primes.size == target
    i += 1
  end
end

puts main()
