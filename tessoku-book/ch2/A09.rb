H,W,N = gets.split.map(&:to_i)
points_ary_ary = []
N.times do
  points_ary_ary << gets.split.map(&:to_i)
end
board = Array.new(H+2) {Array.new(W+2, 0)}

points_ary_ary.each do |points_ary|
  a,b,c,d = points_ary
  board[a][b] += 1
  board[c+1][d+1] += 1
  board[a][d+1] -= 1
  board[c+1][b] -= 1
end

(1..H).each do |i|
  (1..W).each do |j|
    board[i][j] += board[i][j-1]
  end
end

(1..H).each do |i|
  (1..W).each do |j|
    board[i][j] += board[i-1][j]
  end
end

board.shift
board.pop
board.map{_1.shift}
board.map{_1.pop}

puts board.map{_1.join(' ')}
