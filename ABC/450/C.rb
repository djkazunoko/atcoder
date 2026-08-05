def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

h,w = gsi
grid = Array.new(h) {gets.chomp.chars}
visited = Array.new(h) {Array.new(w,false)}
cc = []

DIRECTIONS = [
  [1, 0],
  [0, 1],
  [-1, 0],
  [0, -1]
]

def dfs(grid, visited, i, j, cc)
  visited[i][j] = true
  h = grid.size
  w = grid[0].size
  
  cc << [i,j]
  
  DIRECTIONS.each do |di, dj|
    next_i = i + di
    next_j = j + dj

    next if next_i < 0 || next_i >= h || next_j < 0 || next_j >= w
    next if visited[next_i][next_j]
    next if grid[next_i][next_j] == '#'

    dfs(grid, visited, next_i, next_j, cc)
  end
end

cnt = 0
h.times do |i|
  w.times do |j|
    if grid[i][j] == '.' && visited[i][j] == false
      dfs(grid, visited, i, j, cc)

      ok = true
      cc.each do |i,j|
        if i == 0 || i == h - 1 || j == 0 || j == w - 1
          ok = false
          break
        end
      end
      cnt += 1 if ok
      cc.clear
    end
  end
end
puts cnt
