

class Tree

  # root

end

class Node

  # Value
  # Children: Array
    # linkedlist: 
      # pros: memory, insertion/deletion at the head, 
      # cons: have to traverse linearly
    # array: 
      # pros: multitreaded applications -> can apply actions to children nodes simultaneously, can easily index
      # cons: millions of nodes... poor memory choice


end

# Given an n-ary tree, where each node contains an int value, find the smallest sum of node values in a path from root to leaf node

# time: O(n) n number of nodes
# space: O(n) worse case, call stack is height of the tree

def find_smallest_sum(node)
  # traverse entire tree and keep track of smallest sums and return that sum
  # DFS
  return node.value if node.children.empty? # base case

  min_sum = Integer::MAX

  node.children.each do |child|
    sum = node.value + find_smallest_sum(child)
    min_sum = Math.min(sum, min_sum)
  end

  return min_sum

end


