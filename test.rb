image = Array[
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0]
]

image.each do |row|

    row.collect! do |pixel|
		    if pixel == 0
			       pixel = 1
		    end
    end

end

# test
puts image
