# image blur 2, alt version using Marshal load/dump
class Image

	def initialize(grid)
		@grid = grid
	end

    # the orig set of numbers
	def output_image
		@grid.each do |i|
			i.each do |x|
				print "#{x} "
			end
		puts
		end
	end

	# image blur method
	def blur_image2
		# creating copy of grid
		@new_ary = Marshal.load( Marshal.dump(@grid) )

		# looping through new_ary instead of grid
		@new_ary.each_with_index do |row, row_index|
			row.each_with_index do |pixel, col_index|
				if pixel == 1
					# checking if column to RIGHT exists
					if col_index+1 < row.length
				    	@grid[row_index][col_index+1] = 7
				    end
				    # checking if column to LEFT exists
				    if col_index-1 >= 0
				    	@grid[row_index][col_index-1] = 7
				    end
				    # checking if row BELOW exists
				    if row_index+1 < @grid.length
				    	@grid[row_index+1][col_index] = 7
				    end
				    # checking if row ABOVE exists
				    if row_index-1 >= 0
				    	@grid[row_index-1][col_index] = 7
				    end
				end
			end
		return Image.new(@new_ary)
		end

	end

	def new_blur
		@new_ary.each do |i|
			i.each do |x|
				if x == 0
					print "#{x} "
				end
				if x == 1
					print "#{x} "
				end
				if x == 7
					print "#{1} "
				end
			end
		puts
		end
	end


end


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [1, 0, 1, 0]
])

image.output_image
puts "- - - -"
image.blur_image2
image.new_blur

# test if orig grid has been changed
puts "- - - -"
image.output_image
