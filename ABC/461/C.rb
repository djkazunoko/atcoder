n,k,m = gets.split.map(&:to_i)
t = Array.new(n) {[]}

n.times do
  c,v = gets.split.map(&:to_i)
  t[c - 1] << v
end

top = []
tail = []
t.each do |r|
  next if r.empty?
  r.sort!.reverse!
  top << r[0]
  tail.concat(r[1..])
end

top.sort!.reverse!
tail.concat(top[m..])
tail.sort!.reverse!

puts top[0...m].sum + tail[0...(k - m)].sum
