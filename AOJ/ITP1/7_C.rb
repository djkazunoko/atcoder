r,c = gets.split.map(&:to_i)
table = r.times.map { gets.split.map(&:to_i) }

r.times do |i|
  r_sum = 0
  c.times do |j|
    r_sum += table[i][j]
  end
  table[i] << r_sum
end

row = []
(c + 1).times do |j|
  c_sum = 0
  r.times do |i|
    c_sum += table[i][j]
  end
  row << c_sum
end

table << row

table.each do |row|
  puts row*' '
end
