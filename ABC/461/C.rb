n,k,m = gets.split.map(&:to_i)
cv = n.times.map {gets.split.map(&:to_i)}

t = Array.new(n) {[]}

n.times do |i|
  c,v = cv[i]
  t[c - 1] << v
end

top = []
tail = []
t.each do |r|
  if r.size > 0
    r.sort!.reverse!
    top << r[0]
    tail << r[1..]
  end
end

top.sort!.reverse!
tail << top[m..]
tail.flatten!.sort!.reverse!

puts top[0...m].sum + tail[0...(k - m)].sum
