n = gets.to_i
a_ary = gets.split.map(&:to_i)
d = gets.to_i
lr_ary_ary = []
d.times do
  lr_ary_ary << gets.split.map(&:to_i)
end

# 左から累積max
p = [a_ary[0]]
1.upto(a_ary.length - 1) do |i|
  if a_ary[i] > p[i-1]
    p << a_ary[i]
  else
    p << p[i-1]
  end
end

# 右から累積max
q = Array.new(n, 0)
q[-1] = a_ary[-1]
(n-2).downto(0) do |i|
  if a_ary[i] > q[i+1]
    q[i] = a_ary[i]
  else
    q[i] = q[i+1]
  end
end

lr_ary_ary.each do |lr_ary|
  l,r = lr_ary
  puts [p[l-2], q[r]].max
end
