# The Fibonacci Sequence, implemented recursively

def recursive_fib(n)
    if n <= 1
        return n
    else
        return recursive_fib(n-1) + recursive_fib(n-2)
    end

end

puts recursive_fib(10)
