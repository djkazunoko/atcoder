H,W,N = gets.split.map(&:to_i)
points_ary_ary = []
N.times do
  points_ary_ary << gets.split.map(&:to_i)
end
board = Array.new(H) {Array.new(W, 0)}

points_ary_ary.each do |points_ary|
  a,b,c,d = points_ary.map{_1 - 1}
  (a..c).each do |i|
    board[i][b..d] = board[i][b..d].map{_1 + 1}
  end
end

puts board.map{_1.join(' ')}
