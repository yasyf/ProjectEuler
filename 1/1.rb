#!/usr/bin/env ruby

def main
  (0..999).reduce do |total, n|
    [n%3, n%5].include?(0) ? total + n : total
  end
end

puts main()

