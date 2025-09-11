H,W = gets.chomp.split.map(&:to_i)
board = $<.map{_1.chomp.chars}

res = 'Yes'

H.times do |h|
  W.times do |w|
    next if board[h][w] == '.'

    count = 0 
    count += 1 if w + 1 < W && board[h][w + 1] == '#'
    count += 1 if w - 1 >= 0 && board[h][w - 1] == '#'
    count += 1 if h + 1 < H && board[h + 1][w] == '#'
    count += 1 if h - 1 >= 0 && board[h - 1][w] == '#'

    unless count == 2 || count == 4
      res = 'No'
    end
  end
end

puts res
