class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
        @data = LinkedListNode.new(value, @data)
    end

    # Remove the last item, return the value to the user
    def pop
        if @data != nil
          n = @data.value
          @data = @data.next_node
          return n
        else
          return nil
        end
    end

end

def reverse_list(list)
    new_list = nil

    while list
        new_list = LinkedListNode.new(list.value, new_list)
        list = list.next_node
    end

    return new_list
end

def print_values(list_node)
  print "#{list_node.value} --> "
  if list_node.next_node.nil?
    print "nil\n"
    return
  else
    print_values(list_node.next_node)
  end
end



node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "----------"

revlist = reverse_list(node3)

print_values(revlist)
