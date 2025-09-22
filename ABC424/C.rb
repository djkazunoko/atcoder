N = gets.to_i
g = Array.new(N+1) { [] }

(1..N).each do |i|
  a, b = gets.split.map(&:to_i)
  g[a] << i
  g[b] << i
end

ok = Array.new(N+1, false)
ok[0] = true

def dfs(v, g, ok)
  ok[v] = true
  g[v].each do |vv|
    dfs(vv, g, ok) unless ok[vv]
  end
end

dfs(0, g, ok)

puts ok.count(true) - 1
