n,k = gets.chomp.split.map(&:to_i)
s = gets.chomp.chars

t_ary = []
(1..(n-k+1)).each do |i|
  t_ary << s[(i-1)..((i-1)+k-1)].join
end

x = 0
t_ary.uniq.each do |t|
  y = t_ary.count(t)
  if y > x
    x = y
  end
end

x_ary = []
t_ary.uniq.each do |t|
  y = t_ary.count(t)
  if y == x
    x_ary << t
  end
end

puts x
puts x_ary.sort.join(' ')
