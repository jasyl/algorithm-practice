# require 'set'

class GraphNode
  attr_accessor :neighbors, :name

  def initialize(name)
    @name = name
  end
end

b = GraphNode.new("b")
a = GraphNode.new("a")
c = GraphNode.new("c")
d = GraphNode.new("d")
e = GraphNode.new("e")
f = GraphNode.new("f")

a.neighbors = [b, c, f]
b.neighbors = [a, d]
c.neighbors = [a, d, e]
d.neighbors = [b, c]
e.neighbors = [c]
f.neighbors = [a]


# add start node to stack

# while stack not empty
# pop
# next if already visited
# mark visited
# add all neighbors to stack
# do your processing
def dfs(start_node)
  s = []
  visited = Set.new

  s.push(start_node)

  while !s.empty?
    current_node = s.shift
    next if visited.include?(current_node)
    visited.add(current_node)
    current_node.neighbors.each do |n|
      s.push(n)
    end
    puts current_node.name
    p s.map(&:name)
    p visited.map(&:name)
  end
end

dfs(b)

# if given an adjacency list

def dfs(list)
  s = []
  visited = Set.new

  s.push(start_node)

  while !s.empty?
    current_node = s.shift
    next if visited.include?(current_node)
    visited.add(current_node)
    current_node.neighbors.each do |n|
      s.push(n)
    end
    puts current_node.name
    p s.map(&:name)
    p visited.map(&:name)
  end
end


