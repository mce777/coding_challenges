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
  puts new_ary.inspect #displays the num's sequence

end

collatz(7)
