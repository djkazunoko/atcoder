N = gets.to_i

c = Array.new(N + 1, 0)

x = 1
while (x * x) <= N
  y = x + 1
  while (v = x * x + y * y) <= N
    c[v] += 1
    y += 1
  end
  x += 1
end

ans = []
(1..N).each do |n|
  if c[n] == 1
    ans << n
  end
end

puts ans.size
puts ans.join(' ')
