a,b,c = gets.split.map(&:to_i)

res = 0
(a..b).each do |i|
  res += 1 if c % i == 0
end

puts res
