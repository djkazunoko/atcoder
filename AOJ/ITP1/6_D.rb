n,m = gets.split.map(&:to_i)
a = n.times.map { gets.split.map(&:to_i) }
b = m.times.map { gets.to_i }

ans = []
a.each do |row|
  cnt = 0
  m.times do |i|
    cnt += row[i] * b[i]
  end
  ans << cnt
end

puts ans
