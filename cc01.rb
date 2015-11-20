class Image
	def initialize
	
	end

	def output_image
	
	end
end
#####################
# image = Image.new([
#   [0, 0, 0, 0],
#   [0, 1, 0, 0],
#   [0, 0, 0, 1],
#   [0, 0, 0, 0]
# ])
# image.output_image

image = [
 	[0, 0, 0, 0],
	[0, 1, 0, 0],
	[0, 0, 0, 1],
	[0, 0, 0, 0]
]

image.each do |i|
		i.each do |x|
		print "#{x} "
	end
	puts
end	

	

