#!/usr/bin/env ruby

"""
Problem 9
Special Pythagorean triplet
Published on 25 January 2002 at 06:00 pm [Server Time]

A Pythagorean triplet is a set of three natural numbers, a b c, for which,
For example, 32 + 42 = 9 + 16 = 25 = 52.
There exists exactly one Pythagorean triplet for which a + b + c = 1000.Find the product abc.
"""

def main
  a = 1
  b = 1
  c = 2

  loop do
    while b <= 1000 do
      while c <= 1000 do
        return a*b*c if a + b + c == 1000 && a**2 + b**2 == c**2
        c += 1
      end
      c = 2
      b += 1
    end
    c = 2
    b = 1
    a += 1
  end

end

puts main()
