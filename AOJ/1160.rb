DIRECTIONS = [
    [1, 0],
    [0, 1],
    [-1, 0],
    [0, -1],
    [1, 1],
    [1, -1],
    [-1, -1],
    [-1, 1]
  ]

def dfs(grid, visited, i, j)
  visited[i][j] = true

  h = grid.size
  w = grid[0].size

  DIRECTIONS.each do |di, dj|
    next_i = i + di
    next_j = j + dj

    next if next_i < 0 || next_i >= h || next_j < 0 || next_j >= w
    next if grid[next_i][next_j] == 0
    next if visited[next_i][next_j]
    dfs(grid, visited, next_i, next_j)
  end
end

loop do
  w,h = gets.split.map(&:to_i)
  break if w == 0 && h == 0
  grid = h.times.map {gets.split.map(&:to_i)}
  visited = Array.new(h) { Array.new(w, false) }

  shima = 0
  h.times do |i|
    w.times do |j|
      next if grid[i][j] == 0
      next if visited[i][j]
      dfs(grid, visited, i, j)
      shima += 1
    end
  end
  puts shima
end
