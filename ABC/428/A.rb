s,a,b,x = gets.chomp.split.map(&:to_i)

len = 0
len += (x / (a+b)) * a
len += [x % (a+b), a].min
puts len * s
