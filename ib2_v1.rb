# image blur 2
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
    # @new_ary = Marshal.load( Marshal.dump(@grid) )
    # marshalling totally works, but on larger files it will be data intensive

    @new_ary = []
    @grid.each do |row|
      row_copy = row.clone
      @new_ary.push(row_copy)
    end

    # looping through new_ary instead of grid

    @grid.each_with_index do |row, row_index|
      row.each_with_index do |pixel, col_index|
        if pixel == 1
          # checking if column to RIGHT exists
          if col_index+1 < row.length
            @new_ary[row_index][col_index+1] = 1
          end
          # checking if column to LEFT exists
          if col_index-1 >= 0
            @new_ary[row_index][col_index-1] = 1
          end
          # checking if row BELOW exists
          if row_index+1 < @grid.length
            @new_ary[row_index+1][col_index] = 1
          end
          # checking if row ABOVE exists
          if row_index-1 >= 0
            @new_ary[row_index-1][col_index] = 1
          end
        end
      end

    end

    @grid = @new_ary
    #return Image.new(@new_ary)  ---> used this with marshal dump

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
image.output_image
# blurred_image = image.blur_image2
# blurred_image.output_image
