n,m = gets.split.map(&:to_i)
ab_ary = m.times.map { gets.split.map(&:to_i) }

c = Array.new(n, n - 1)

ab_ary.each do |ab|
  a,b = ab
  c[a - 1] -= 1
  c[b - 1] -= 1
end

ans = []
c.each do |i|
  ans << (i * (i - 1) * (i - 2)) / 6
end

puts ans*' '
