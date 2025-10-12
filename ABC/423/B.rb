N = gets.to_i
l_ary = gets.split.map(&:to_i)

first = 0
last = 0

l_ary.each_with_index do |n, idx|
  if n == 1
    first = idx
    break
  end
end

l_ary.each_with_index do |n, idx|
  if n == 1
    last = idx
  end
end

p last - first
