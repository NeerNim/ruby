class Node 
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end


p node = Node.new

class LinkedList 

  def initialize
    @head = Node.new(nil, nil)    
    @tail = Node.new(nil, nil)
  end

  def add(data)
    current_node = @head
    while(current_node.next_node != nil)
      current_node = current_node.next_node
    end
    current_node.next_node = Node.new(data)
  end

  def get(index)
    #your code here
    node = @head.next_node
    index.times do
      node = node.next_node
      if node == nil
        return "This node index does not exist"
      end
    end
    node.value
  end

  def add_at(index, item)
    node = @head
    index.times do
      if node != nil
        node = node.next_node
      else
        return "no more nodes"
      end      
    
    end
    node.next_node = Node.new(item, node.next_node)
  end

  def remove(index)
    node = @head
    index.times do
      node = node.next_node
    end
    node.next_node = node.next_node.next_node
  end

  def print_list
    node = @head.next_node
    result = []
      until node.nil?
        result.push(node.value)
        node = node.next_node
      end
    result
  end

end

list = LinkedList.new
list.add(2)
list.add(5)
list.add(6)
list.add_at(1, 0)

p list.print_list 

=begin list.add_at(2, 13)
p list.print_list
list.remove(2)
p list.print_list 
=end