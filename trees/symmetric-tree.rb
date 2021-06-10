# https://leetcode.com/problems/symmetric-tree/

# Given the root of a binary tree, check whether it is a mirror of itself (i.e., symmetric around its center).

# use BFS to determine if tree is symmetric

# you can use a queue for BFS

# need to be able to short circuit once we don't find a mirror match

# immediate returns can be
def is_symmetric(root)
  return false if root.left != root.right
  return false unless root # not sure if root should be false if nil

  nodes = Queue.new
  nodes.enqueue(root.left)
  nodes.enqueue(root.right)

  until nodes.empty?
    node1 = nodes.dequeue
    node2 = nodes.dequeue

    if node1 != node2
      return false
    if test
      
    if node1 && node2 && node1 == node2  
      nodes.enqeue(node1.left) if node1.left
      nodes.enqeue(node2.right) if node2.right

      nodes.enqeue(node1.right) if node1.right
      nodes.enqeue(node2.left)  if node2.left
    end
  end
  return true
end