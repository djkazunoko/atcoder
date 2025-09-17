H,W,N = gets.split.map(&:to_i)
points_ary_ary = []
N.times do
  points_ary_ary << gets.split.map(&:to_i)
end
board = Array.new(H) {Array.new(W, 0)}

points_ary_ary.each do |points_ary|
  a,b,c,d = points_ary.map{_1 - 1}
  board[a][b] += 1
  board[c+1][d+1] += 1
  board[a][d+1] -= 1
  board[c+1][b] -= 1
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

puts board.map{_1.join(' ')}
