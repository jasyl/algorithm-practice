#https://leetcode.com/problems/possible-bipartition/

def possible_bipartition(n, dislikes)
  color_table = Array.new(n + 1, 0)

  graph = Hash.new([])

  dislikes.each do |p1, p2|
    if graph.key?(p1)
      graph[p1].push(p2)
    else
      graph[p1] = [p2]
    end

    if graph.key?(p2)
      graph[p2].push(p1)
    else
      graph[p2] = [p1]
    end
  end
  
  (1..n).each do |i|
    if color_table[i] == 0 && !dfs(graph, color_table, i, 1)
      return false
    end
  end
  return true
end

def dfs(graph, color_table, current, color)
  color_table[current] = color
  graph[current].each do |next_val|
    if color_table[next_val] == color
      return false
    end
    if color_table[next_val] == 0 && !dfs(graph, color_table, next_val, -color)
      return false
    end
  end
  return true
end

n = 4
dislikes = [[1,2],[1,3],[2,4]]
p possible_bipartition(n, dislikes)

# n = 3
# dislikes = [[1,2],[1,3],[2,3]]
# p possible_bipartition(n, dislikes)

# n = 5
# dislikes = [[1,2],[2,3],[3,4],[4,5],[1,5]]
# p possible_bipartition(n, dislikes)