d = gets.to_i
n = gets.to_i
lr_ary = $<.map{ _1.split.map(&:to_i) }

res = Array.new(d, 0)

lr_ary.each do |lr|
  l,r = lr
  (l..r).each do |day|
    res[day - 1] += 1
  end
end

puts res
