n,m = gets.split.map(&:to_i)
rc_arr = m.times.map { gets.split.map(&:to_i) }

board = Array.new(n+1) {Array.new(n+1, false)}
res = 0
rc_arr.each do |rc|
  r,c = rc
  s = [board[r][c], board[r+1][c], board[r][c+1], board[r+1][c+1]]
  if s.none?
    board[r][c], board[r+1][c], board[r][c+1], board[r+1][c+1] = Array.new(4, true)
    res += 1
  end
end

p res
