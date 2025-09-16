N, R = gets.split.map(&:to_i)
l_ary = gets.split.map(&:to_i)

right = l_ary[R..]
left = l_ary[0...R]

if (i = right.rindex(0))
  right = right[0..i]
else
  right = []
end
r_cnt = right.count(0) + right.count(1) * 2

if (i = left.index(0))
  left = left[i..]
else
  left = []
end
l_cnt = left.count(0) + left.count(1) * 2

p r_cnt + l_cnt
