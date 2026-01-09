n = gets.to_i

board = Array.new(n) {Array.new(n, false)}

r = 0
c = (n-1) / 2
k = 1

board[r][c] = k

(n**2 - 1).times do
  if board[(r - 1) % n][(c + 1) % n]
    board[(r + 1) % n][c] = k + 1
    r = (r + 1) % n
  else
    board[(r - 1) % n][(c + 1) % n] = k + 1
    r = (r - 1) % n
    c = (c + 1) % n
  end

  k = k + 1
end

board.each do |row|
  puts row.join(' ')
end
