# image blur 1
class Image
	# attr_writer :value

	def initialize(value)
		self.value = value
	end

	def output_image
		@value.each do |i|
			i.each do |x|
				print "#{x} "
			end
		puts
		end
	end

end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output_image
