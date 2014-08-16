#!/usr/bin/env ruby

"""
Problem 6
Sum square difference
Published on 14 December 2001 at 06:00 pm [Server Time]

The sum of the squares of the first ten natural numbers is,
The square of the sum of the first ten natural numbers is,
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 385 = 2640.
Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
"""

def main
  r = (1..100)
  sum_of_squares = r.map { |x| x*x }.reduce(:+)
  square_of_sum = r.reduce(:+)**2
  square_of_sum - sum_of_squares
end

if __FILE__ == $0
  puts main()
end
