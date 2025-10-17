n,q = gets.split.map(&:to_i)

pc = Array.new(n + 1, 1)
pc[0] = 0

o = 1
q.times do
  x,y = gets.split.map(&:to_i)
  res = 0

  while o <= x
    res += pc[o]
    pc[y] += pc[o]
    pc[o] = 0
    o += 1
  end

  puts res
end
