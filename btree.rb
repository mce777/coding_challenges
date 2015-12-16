
class BinaryTree
	attr_accessor :payload, :left, :right

	def initialize(payload, left, right)
		@payload = payload
		@left = left
		@right = right
	end

	def insert(value)
		if value < @payload && @left == nil
			@left = BinaryTree.new(value, nil, nil)
		elsif value >= @payload && @right == nil
			@right = BinaryTree.new(value, nil, nil)
		elsif value < @payload
			@left.insert(value)
		elsif value >= @payload
			@right.insert(value)
		end
	end

	def pull(parent)
		if @left != nil
			return @left.pull(self)
		else
			parent.left = @right
			return @payload
		end
	end
end

array = [7, 4, 9, 1, 6, 14, 10]
a = BinaryTree.new(array.shift, nil, nil)
array.each do |element|
	a.insert(element)
end

b = BinaryTree.new(nil, a, nil)
new_ary = []
while b.left != nil
	new_ary.push(b.left.pull(b))
end

puts new_ary
