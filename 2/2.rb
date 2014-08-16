#!/usr/bin/env ruby

class Fib
  def initialize
    @mem = {0 => 0, 1 => 1, 2 => 2}
  end

  def calc(n)
    @mem[n] ||= calc(n-2) + calc(n-1)
  end
end

def main
  fib = Fib.new
  sum = 0
  n = 0
  loop do
    return sum if (nth = fib.calc(n)) >= 4000000
    sum += nth if nth%2 == 0
    n += 1
  end
end

puts main()

