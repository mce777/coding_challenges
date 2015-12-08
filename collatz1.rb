# calculate the Collatz sequence for every number up to x

def collatz(num)
  new_ary = 0
  new_ary += 1 #initial number

  while num != 1
    if num % 2 == 0
      num = num/2
      # new_ary.push(num)
    else
      num = 3*num +1
      # new_ary.push(num)
    end
    new_ary += 1
  end

  return new_ary #.length

end

def longest(bottom,top)
  #arr = []
  name = 0
  height = 0

  (bottom..top).each do |new_person|
  #while a <= b
    new_height = collatz(new_person)
    if new_height > height
      height = new_height
      name = new_person
    end
    #a = a + 1
    #arr.push(n)
  end

  return [name, height]
end

result = longest(1,1000000)
puts "#{result[0]} -- #{result[1]}"
