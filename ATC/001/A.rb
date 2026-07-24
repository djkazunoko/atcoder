def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

H,W = gsi
grid = H.times.map {gets.chomp.chars}

DIRECTIONS = [
  [1, 0],
  [0, 1],
  [-1, 0],
  [0, -1]
]

def dfs(i, j, grid, visited)
  visited[i][j] = true

  DIRECTIONS.each do |di, dj|
    next_i = i + di
    next_j = j + dj

    next if (next_i < 0 || next_i >= H || next_j < 0 || next_j >= W)
    next if grid[next_i][next_j] == '#'
    next if visited[next_i][next_j]

    dfs(next_i, next_j, grid, visited)
  end
end

s = nil
g = nil
grid.each_with_index do |row, i|
  row.each_with_index do |cell, j|
    s = [i,j] if cell == 's'
    g = [i,j] if cell == 'g'
  end
end

visited = Array.new(H) { Array.new(W, false) }

dfs(s[0], s[1], grid, visited)

pyn(visited[g[0]][g[1]])
