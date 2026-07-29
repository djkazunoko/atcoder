def dfs(v, graph, color)
  graph[v].each do |to, w|
    next if color[to] != -1
    color[to] = w.even? ? color[v] : 1 - color[v]
    dfs(to, graph, color)
  end
end

n = gets.to_i

graph = Array.new(n) {[]}

(n-1).times do
  u, v, w = gets.split.map(&:to_i)
  u -= 1
  v -= 1
  
  graph[u] << [v, w]
  graph[v] << [u, w]
end

color = Array.new(n, -1)
color[0] = 0

dfs(0, graph, color)

puts color
