# Linked list
class Node
  attr_accessor :data, :next_node
  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end
end

def has_next
  return @next_node.next_node != nil
end

def print_data(node)
  if node
   print "#{node.data} -> "
   print_data(node.next_node)
 else
   return puts "nil \n"
 end
end

# Turning linked list into a stack
class Stack
  attr_accessor :top
  def initialize
    @top = nil
  end
  # Add a node to stack
  def push(data)
    @top = Node.new(data, @top)
  end
  # Take the top node's "data" from the stack
  def pop
    if @top == nil
      return "It's empty"
    else
      data = @top.data
      @top = @top.next_node
      data
    end
  end
end

# Reverse
def reverse(node)
  # create a stack from exustug linked list
  stack = Stack.new
  while node
    stack.push(node.data)
    node = node.next_node
  end
  # reverse the stack and save it to a new linked list (Node)
  Node.new(stack.pop, stack.top)
end

node1 = Node.new(3)
node2 = Node.new(9, node1)
node3 = Node.new(27, node2)
puts "Original linked list: \n"
print_data(node3)
reversed_list = reverse(node3)
puts "Reversed: \n"
print_data(reversed_list)
