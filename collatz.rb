def collatz(num)

  new_ary = []
  new_ary.push(num) #initial number

  while num != 1
    if num % 2 == 0
      num = num/2
      new_ary.push(num)
    else
      num = 3*num +1
      new_ary.push(num)
    end
  end

  return new_ary.length

end

def longest(a,b)
  arr = []
  while a <= b
    n = collatz(a)
    a = a + 1
    arr.push(n)
  end
  puts "#{arr.index(arr.max)+1} has the longest Collatz sequence (#{arr.max})"
end


longest(1,1000)
