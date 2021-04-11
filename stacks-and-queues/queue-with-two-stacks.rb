# Version 1 - remove all elements and add to other list to dequeue and enqueue
# Time: O(n)
# Space: O(n)
class QueueTwoStacks
  
  def initialize
    @enqueue_list = Stack.new
    @dequeue_list = Stack.new
  end

  def enqueue(value)
    if @enqueue_list.empty?
      transfer_list(@enqueue_list, @dequeue_list)
    end
    @enqueue_list.push(value)
  end

  def dequeue
    if @dequeue_list.empty?
      transfer_list(@dequeue_list, @enqueue_list)
    end
    return @dequeue_list.pop
  end

  # will this modify original lists?
  def transfer_list(receiving_list, giving_list)
    until giving_list.empty?
      item = giving_list.pop
      recieving_list.push(item)
    end
  end

end

# Version 2 - Move items over to out_stack only when dequeues need to be performed && out_stack is empty. 
# no movement necessary for enqueue. 

# time
# - Enqueue is O(1)
# - Dequeue is O(n) when empty because we have to move over all elements from enqueue
# - O(n) overall, The cost per item will be O(1) because it's only pushes and pops. however, m enqueue and m deqeuue operations put m or fewer items into the system -> O(m)
# think about the cost per item passing through the queue, rather than the cost per enqueue() and dequeue()

# can use arrays in ruby for stack

class QueueTwoStacks
  def initialize
    @in_stack = []
    @out_stack = []
  end

  def enqueue(value)
    @in_stack.push(value)
  end

  def dequeue
    # transfer all values from in_stack to the out_stack
    if out_stack.empty?
      until @in_stack.empty?
        out_stack.push(in_stack.pop)
      end
    end
    # if the out_stack is still empty that means Queue is empty
    if out_stack.empty?
      raise "empty queue"
    else # if that out_stack isn't empty
      return @out_stack.pop
    end
  end
end

