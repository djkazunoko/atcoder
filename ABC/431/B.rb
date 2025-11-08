x = gets.to_i
n = gets.to_i
w_ary = gets.split.map(&:to_i)
q = gets.to_i
p_ary = q.times.map { gets.to_i }

parts = []

p_ary.each do |p|
  if parts.include?(p)
    parts.delete(p)
  else
    parts.push p
  end
  
  res = x
  parts.each do |part|
    res += w_ary[part - 1]
  end
  puts res
end
