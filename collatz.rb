
def collatz(num)
  value = 1

  num.times do
    new_ary = []
    new_ary.push(value) #initial number

    while value != 1
      if value % 2 == 0
        value = value/2
        new_ary.push(value)
      else
        value = 3*value +1
        new_ary.push(value)
      end
    end

    value = value + 1
    puts new_ary.inspect #displays the num's sequence

  end #n.times

end

collatz(5)
