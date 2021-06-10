# Write Stack class with methods that allow to push new item to the stack (push), remove and return an item (pop) and return item without removing (peek).

# using an Array
class Stack

  def initialize
    @stack = []
  end

  def pop
    return @stack.pop
  end

  def push(value)
    @stack.push(value)
  end

  def peek
    return nil if @stack.empty?
    return @stack.last
  end
end

# using a Linked List
# class Stack

#   def initialize
#     @stack = LinkedList.new
#   end

#   def pop
#     return @stack.remove_first
#   end

#   def push(value)
#     @stack.add_first(value)
#   end

#   # if linked list has appropriate methods, use those
#   def peek
#     result = @stack.remove_first
#     @stack.add_first(result)
#     return result

#     return @stack.get_first

#   end

# end