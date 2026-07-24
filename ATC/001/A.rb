def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

h,w = gsi
grid = h.times.map {gc}

def dfs(grid, i, j, seen)
  seen[i][j] = true
  h = grid.size
  w = grid[0].size

  di = [1,0,-1,0]
  dj = [0,1,0,-1]

  4.times do |z|
    next_i = i + di[z]
    next_j = j + dj[z]

    next unless (0 <= next_i && next_i < h) && (0 <= next_j && next_j < w)
    next if seen[next_i][next_j]

    next_v = grid[next_i][next_j]
    if next_v == 'g'
      seen[next_i][next_j] = true
    end
    if next_v == '.'
      dfs(grid, next_i, next_j, seen)
    end
  end
end

seen = Array.new(h) { Array.new(w, false) }

s_i, s_j = nil, nil
grid.each_with_index do |row, row_idx|
  col_idx = row.index('s')
  if col_idx
    s_i, s_j = row_idx, col_idx
  end
end

g_i, g_j = nil, nil
grid.each_with_index do |row, row_idx|
  col_idx = row.index('g')
  if col_idx
    g_i, g_j = row_idx, col_idx
  end
end

dfs(grid, s_i, s_j, seen)

pyn(seen[g_i][g_j])
