n,m = gets.split.map(&:to_i)
c_ary = gets.split.map(&:to_i)
ab_ary = n.times.map { gets.split.map(&:to_i) }

ans = 0
n.times do |i|
  a,b = ab_ary[i]
  if c_ary[a - 1] >= b
    ans += b
    c_ary[a - 1] -= b
  else
    ans += c_ary[a - 1]
    c_ary[a - 1] = 0
  end
end

puts ans
