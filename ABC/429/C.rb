n = gets.to_i
a = gets.split.map(&:to_i)

b = Array.new(n, 0)
a.each { |ai| b[ai - 1] += 1 }

ans = 0
b.each do |bi|
  ans += bi * (bi - 1) * (n - bi) / 2
end
puts ans
