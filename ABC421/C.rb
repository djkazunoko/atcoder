n = gets.to_i
s = gets.chomp.chars

x,y1,y2 = [],[],[]

n.times do |i|
  y1 << 2*(i+1) - 1
  y2 << 2*(i+1)
end

s.each_with_index do |str, idx|
  if str == 'A'
    x << idx + 1
  end
end

t1,t2 = [],[]

x.each_with_index do |num, idx|
  t1 << (num - y1[idx]).abs
  t2 << (num - y2[idx]).abs
end

puts t1.sum <= t2.sum ? t1.sum : t2.sum
