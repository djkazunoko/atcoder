n = gets.to_i
a = gets.split.map(&:to_i)

ans = 0
n.times do |i|
  if i.even?
    ans += a[i]
  end
end
puts ans
