n,m = gets.split.map(&:to_i)
c_ary = gets.split.map(&:to_i)
ab_ary = n.times.map { gets.split.map(&:to_i) }

h = Hash.new(0)
n.times do |i|
  a,b = ab_ary[i]
  h[a] += b
end

ans = 0
m.times do |j|
  ans += [h[j + 1], c_ary[j]].min
end
puts ans
