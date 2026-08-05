def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

DIRECTIONS = [
  [1, 0],
  [0, 1],
  [-1, 0],
  [0, -1]
]

def dfs(grid, visited, i, j)
  h = grid.size
  w = grid[0].size
  
  visited[i][j] = true
  enclosed = (0 < i && i < h-1 && 0 < j && j < w-1)
  
  DIRECTIONS.each do |di, dj|
    next_i = i + di
    next_j = j + dj

    next if next_i < 0 || next_i >= h || next_j < 0 || next_j >= w
    next if visited[next_i][next_j]
    next if grid[next_i][next_j] == '#'

    enclosed &= dfs(grid, visited, next_i, next_j)
  end

  enclosed
end

h,w = gsi
grid = Array.new(h) {gets.chomp.chars}
visited = Array.new(h) {Array.new(w,false)}

cnt = 0
h.times do |i|
  w.times do |j|
    next if grid[i][j] == '#'
    next if visited[i][j]

    cnt += 1 if dfs(grid, visited, i, j)
  end
end
puts cnt
