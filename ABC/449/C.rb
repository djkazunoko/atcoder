n,l,r = gets.split.map(&:to_i)
s = gets.chomp.chars

ans = 0
(n - l).times do |i|
  ans += s[(l + i)..(r + i)].count(s[i])
end
puts ans
