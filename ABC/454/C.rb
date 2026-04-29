def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end
n,m = gsi
graph = Array.new(n) {[]}
m.times do
  a,b = gsi
  graph[a - 1] << b - 1
end

visited = Array.new(n, false)
visited[0] = true
q = [0]

until q.empty? do
  x = q.shift
  graph[x].each do |v|
    next if visited[v]
    visited[v] = true
    q << v
  end
end

puts visited.count(true)
