n = gets.to_i
s = gets.chomp.chars

ans = 0
1000.times do |i|
  v = [(i / 100) % 10, (i / 10) % 10, i % 10]
  f = 0
  n.times do |j|
    if s[j].to_i == v[f]
      f += 1
    end
    if f == 3
      ans += 1
      break
    end
  end
end

puts ans
