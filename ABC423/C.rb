N, R = gets.split.map(&:to_i)
l_ary = gets.split.map(&:to_i)

right = l_ary.slice!(R..)
left = l_ary

right.reverse.each_with_index do |n, idx|
  if n == 0
    right.pop(idx)
    break
  end
end
r_cnt = right.count(1) + right.size

left.each_with_index do |n, idx|
  if n == 1
    left.shift(idx+1)
    break
  end
end
l_cnt = left.count(1) + left.size

p r_cnt + l_cnt
