# Given the root of a binary tree, determine if it is a valid binary search tree (BST).

# BST
# the left subtree of a node contains values less than the node's key
# the right of the subtree contains nodes greater than the node's key

# Because it's a BST, we can use recursion, may make the most sense

# root = [2, 1, 3] => true
# root = [5,1,4,null,null,3,6] => false
# root = [] => true
# root = [1] => true
# root = [1, 5] => false

# Approach
# I need to keep track of min and max values for what each node should be between. 
# As i go down the tree, the min and max will be determined by going left or right
# min = -infinity
# max = infinity

# [2, 1, 3]
# node = 2, min = -infinity, max = infinity
# node = 1, min = -infinity, max = 2
# node = 3, min = 2, max = infinity

def is_valid_BST?(root)
  min = -Float::Infinity
  max = Float::Infinity 
  return is_valid_helper(root, min, max)
end

def is_valid_helper(node, min, max)
  return true if node.nil?

  if node.val > max || node.val < min
    return false
  end

  return is_valid_helper(node.left, min, node.val) && is_valid_helper(node.right, node.val, max)


end

