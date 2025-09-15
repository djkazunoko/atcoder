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

board_1d = []

board.each do |row|
  tmp = []
  row.each_with_index do |n, idx|
    if idx > 0
      tmp << (n + tmp[idx - 1])
    else
      tmp << n
    end
  end
  board_1d << tmp
end

board_2d = []
board_2d << board_1d[0]

(1..(H - 1)).each do |h|
  tmp = []
  W.times do |w|
    tmp << (board_1d[h][w] + board_2d[h-1][w])
  end
  board_2d << tmp
end

res = []
board_2d.unshift Array.new(W, 0)
(H+1).times do |h|
  board_2d[h].unshift 0
end

points.each do |abcd|
  a,b,c,d = abcd
  bottom_right = board_2d[c][d]
  res << bottom_right - (board_2d[c][b-1] + board_2d[a-1][d]) + board_2d[a-1][b-1]
end

puts res
