def collatz(num)
  x = num
  num.times do
    x = x -1
    puts x
  end

end

collatz(5)
