n = gets.to_i
a_ary = gets.split.map(&:to_i)

res = 1
loop do
  if a_ary[res - 1] == 1
    break
  end

  res += a_ary[res - 1] - 1

  if res >= n
    res = n
    break
  end
end

puts res
