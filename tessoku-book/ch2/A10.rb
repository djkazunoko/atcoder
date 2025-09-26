n = gets.to_i
a_ary = gets.split.map(&:to_i)
d = gets.to_i
lr_ary_ary = []
d.times do
  lr_ary_ary << gets.split.map(&:to_i)
end

res = []

lr_ary_ary.each do |lr_ary|
  l,r = lr_ary
  res << a_ary[..(l - 2)].concat(a_ary[r..]).max
end

puts res
