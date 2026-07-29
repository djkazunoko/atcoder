n = gets.to_i

graph = Array.new(n) {[]}

(n-1).times do
  u, v, w = gets.split.map(&:to_i)
  graph[u - 1] << [v - 1, w]
  graph[v - 1] << [u - 1, w]
end

def dfs(v, graph, color)
  graph[v].each do |ary|
    to, w = ary
    next if color[to] != -1
    if w.even?
      color[to] = color[v]
    else
      color[to] = color[v] == 0 ? 1 : 0
    end

    dfs(to, graph, color)
  end
end

color = Array.new(n, -1)
color[0] = 0

dfs(0, graph, color)

puts color
