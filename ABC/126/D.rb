def dfs(v, graph, colors, current_color = 0)
  colors[v] = current_color

  graph[v].each do |to, w|
    next if colors[to] != -1

    if w.even?
      dfs(to, graph, colors, current_color)
    else
      dfs(to, graph, colors, 1 - current_color)
    end
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

colors = Array.new(n, -1)

dfs(0, graph, colors)

puts colors
