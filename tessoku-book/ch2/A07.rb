d = gets.to_i
n = gets.to_i
lr_ary = $<.map{ _1.split.map(&:to_i) }

res = Array.new(d, 0)

lr_ary.each do |lr|
  l,r = lr
  res[l - 1] +=1
  res[r] -=1 if r < res.size
end

res.each_with_index do |i, idx|
  if idx > 0
    res[idx] = i + res[idx - 1]
  end
end

puts res
