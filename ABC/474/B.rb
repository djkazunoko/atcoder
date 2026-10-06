n = gets.to_i
p = gets.split.map(&:to_i)

l = 0
flag = true
((n / 10) + 1).times do |g|
  l = g * 10
  unless p[l..(l+9)].all? {_1 >= (l+1) && _1 <= (l+10)}
    flag = false
    break
  end
end

puts(flag ? 'Yes' : 'No')
