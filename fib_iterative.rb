# The Fibonacci Sequence, implemented iteratively.

def iterative_fib(n)
  x = 0
  y = 1

  n.times do
    z = x + y
    # after that equation, the following is done
    x = y
    y = z
    # then we go back to equation on line 6
  end

  return x
end

puts iterative_fib(2)
