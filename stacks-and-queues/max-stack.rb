require_relative "stack-class"

class MaxStack

  def initialize
    @stack = Stack.new
    @max_stack = Stack.new

  end

  def get_max
    return @max_stack.peek
  end

  def push(value)
    if value >= get_max
      @max_stack.push(value)
    end
    @stack.push(value)
  end

  def pop
    item = @stack.pop
    if get_max == item
      @max_stack.pop
    end

    return @stack.pop
  end

end