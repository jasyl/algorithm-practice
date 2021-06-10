# https://www.interviewcake.com/question/ruby/balanced-binary-tree?course=fc1&section=trees-graphs

class BinaryTreeNode

  attr_accessor :value
  attr_reader :left, :right

  def initialize(value)
    @value = value
    @left  = nil
    @right = nil
  end

  def insert_left(value)
    @left = BinaryTreeNode.new(value)
  end

  def insert_right(value)
    @right = BinaryTreeNode.new(value)
  end
end

# if the difference between the depths of any two leaf nodes is no greater than one. 

# check to see if height of subtrees leaf nodes are no different than 1

# check the difference between min leaf depth and max leaf depth is 1 or less

# iterative approach
def balanced?(root) 
  return true unless root // # if root is nil return true

  depths = [] # keep track of depth numbers
  nodes = [] # keep track of node & depth
  nodes.push(root, 0) # start out with the root with a depth of 0

  until nodes.empty?
    node, depth = nodes.pop

    if !node.left && !node.right # this is a leaf node
      unless depths.include?(depth)
        depth.push(depth) # only push a new depth once we're at a leaf node


        # then check if one of two cases are satisfied
        # 1. there are more than 2 depths
        # 2 there are 2 depths but their difference is greater than 1
        if depths.length > 2 ||
          depths.length == 2 && (depths[0] - depths[1]).abs > 1
          return false
        end
      end
    else
      nodes.push(node.left, depth + 1) if node.left
      nodes.push(node.right, depth + 1) if node.right
    end
  end

  # we can return true at the end because we hadn't reached our short circuit. 
  return true
end