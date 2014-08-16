#!/usr/bin/env ruby

"""
Problem 4
Largest palindrome product
Published on 16 November 2001 at 06:00 pm [Server Time]

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
Find the largest palindrome made from the product of two 3-digit numbers.
"""

def main
  all = []
  999.downto(100) do |a|
    999.downto(100) do |b|
      product = a*b
      all << product if product.to_s == product.to_s.reverse
    end
  end
  all.max
end

puts main()
