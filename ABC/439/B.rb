n = gets.to_i

res = 'No'
a = []

loop do
  if n == 1
    res = 'Yes'
    break
  end

  a << n
  if a.size != a.uniq.size
    break
  end

  n = n.to_s.chars.map(&:to_i).map { _1 ** 2 }.sum
end

puts res
