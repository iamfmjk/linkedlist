# Linked list
class Node
  attr_accessor :data, :next_node
  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end
end


def print_data(node)
  if node
   print "#{node.data} -> "
   print_data(node.next_node)
 else
   return puts "nil \n"
 end
end


# Reverse/Mutate
def mutate(node)
  previous_node = nil
  current_node = node
  next_node = nil
  while current_node
    next_node = current_node.next_node
    current_node.next_node = previous_node
    previous_node = current_node
    current_node = next_node
    # puts "next node: #{next_node.data}, current node: #{current_node.data}, previous node: #{previous_node.data}"
  end
  return previous_node
end

node1 = Node.new(3)
node2 = Node.new(9, node1)
node3 = Node.new(27, node2)
puts "Original linked list: \n"
print_data(node3)

puts "Mutated: \n"

mutated = mutate(node3)
print_data(mutated)
