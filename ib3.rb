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

  def blur_image(distance)

    @new_ary = []
    @grid.each do |row|
      row_copy = row.clone
      @new_ary.push(row_copy)
    end

    n = distance

    @grid.each_with_index do |row, row_index|
      row.each_with_index do |pixel, col_index|
        if pixel == 1
          # checking if column to RIGHT exists
          if col_index+distance < row.length
            @new_ary[row_index][col_index+distance] = 1
              while distance > 1
                @new_ary[row_index][col_index+(distance-1)] = 1
                distance = distance - 1
              end  
          end
          
          distance = n
          # checking if column to LEFT exists
          if col_index-distance >= 0
            @new_ary[row_index][col_index-distance] = 1
              while distance > 1
                @new_ary[row_index][col_index-(distance-1)] = 1
                distance = distance - 1
              end  
          end
          
          distance = n
          # checking if row BELOW exists
          if row_index+distance < @grid.length
            @new_ary[row_index+distance][col_index] = 1
              while distance > 1
                @new_ary[row_index+(distance-1)][col_index] = 1
                distance = distance - 1
              end
          end
          
          distance = n
          # checking if row ABOVE exists
          if row_index-distance >= 0
            @new_ary[row_index-distance][col_index] = 1
            while distance > 1
              @new_ary[row_index-(distance-1)][col_index] = 1
              distance = distance - 1
            end
          end

        end
      end

    end

    @grid = @new_ary


  end




end


image = Image.new([
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0]
])

image.output_image
puts "- - - -"
image.blur_image(2)
image.output_image
