n,q = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
lr_array = $<.map{ _1.split.map(&:to_i) }

a.each_with_index do |i, idx|
  if idx > 0
    a[idx] = i + a[idx - 1]
  end
end

res = []

lr_array.each do |lr|
  l,r = lr
  if l == 1
    res << a[r - 1]
  else
    res << a[r - 1] - a[l - 2]
  end
end

puts res
