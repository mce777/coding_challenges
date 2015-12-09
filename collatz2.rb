# calculate the Collatz sequence for every number up to x

def collatz(num)

  if num == 1
    return num
  elsif num % 2 == 0
    return collatz(num/2) + 1
  else
    return collatz(num*3+1) + 1
  end

end

def longest(bottom,top)
  #arr = []
  name = 0
  height = 0

  (bottom..top).each do |new_person|

    new_height = collatz(new_person)
    if new_height > height
      height = new_height
      name = new_person
    end

  end

  return [name, height]
end

result = longest(1,1000000)
puts "#{result[0]} -- #{result[1]}"
