H,W = gets.split.map(&:to_i)
board = []
H.times do
  board << gets.split.map(&:to_i)
end
Q = gets.to_i
points = []
Q.times do
  points << gets.split.map(&:to_i)
end

board.each do |row|
  row.each_with_index do |n, idx|
    if idx > 0
      row[idx] = (n + row[idx - 1])
    end
  end
end

(1..(H - 1)).each do |h|
  W.times do |w|
    board[h][w] += board[h-1][w]
  end
end

res = []
board.unshift Array.new(W, 0)
(H+1).times do |h|
  board[h].unshift 0
end

points.each do |abcd|
  a,b,c,d = abcd
  bottom_right = board[c][d]
  res << bottom_right - (board[c][b-1] + board[a-1][d]) + board[a-1][b-1]
end

puts res
