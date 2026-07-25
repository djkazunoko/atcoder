def dfs(grid, visited, i, j, h, w)
  visited[i][j] = true
  return if grid[i][j] == 0

  dir = [
    [1, 0],
    [0, 1],
    [-1, 0],
    [0, -1],
    [1, 1],
    [1, -1],
    [-1, -1],
    [-1, 1]
  ]

  dir.each do |di, dj|
    next_i = i + di
    next_j = j + dj

    next if next_i < 0 || next_i >= h || next_j < 0 || next_j >= w
    next if grid[next_i][next_j] == 0
    next if visited[next_i][next_j]
    dfs(grid, visited, next_i, next_j, h, w)
  end

  $riku += 1
end

loop do
  w,h = gets.split.map(&:to_i)
  break if w == 0 && h == 0
  grid = h.times.map {gets.split.map(&:to_i)}
  visited = Array.new(h) { Array.new(w, false) }
  $shima = 0

  h.times do |i|
    w.times do |j|
      if visited[i][j] == false
        $riku = 0
        dfs(grid, visited, i, j, h, w)
        $shima += 1 if $riku >= 1
      end
    end
  end

  puts $shima
end
