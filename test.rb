def is_valid?(number)
  # step 1: separate number into individual digits
  split_num = number.to_s.split("").map(&:to_i)

  # step 2: from the right, double every second digit
  # with map, you change the value
  split_num = split_num.reverse.each_with_index.map do |value, index|
    if index % 2 != 0
      # step 3: if 2x value >= 10, take value and subtract 9 from it
      if value*2 >= 10
        (value*2) - 9
      else
        value*2
      end
    else
      value
    end
  end

  # sum of all the digits
  sum = 0
  split_num.each do |num|
    sum = sum + num
  end
  # divisable by 10?
  if sum % 10 == 0
    return true
  else
    return false
  end

end

puts is_valid?(4194560385008504)
