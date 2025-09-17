H,W,N = gets.split.map(&:to_i)
points_ary_ary = Array.new(N) { gets.split.map(&:to_i) }

#上下左右に1行1列の番兵を追加している
board = Array.new(H+2) {Array.new(W+2, 0)}

points_ary_ary.each do |points_ary|
  a,b,c,d = points_ary
  board[a][b] += 1
  board[c+1][d+1] += 1
  board[a][d+1] -= 1
  board[c+1][b] -= 1
end

#横方向に累積和
(1..H).each do |i|
  (1..W).each do |j|
    board[i][j] += board[i][j-1]
  end
end

#縦方向に累積和
(1..H).each do |i|
  (1..W).each do |j|
    board[i][j] += board[i-1][j]
  end
end

#番兵を除去
board = board[1..H].map { |row| row[1..W] }

puts board.map{_1.join(' ')}
