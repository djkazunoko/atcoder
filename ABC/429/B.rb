n,m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

a.concat a
res = 'No'
n.times do |i|
  res = 'Yes' if a.slice(i, (n-1)).sum == m
end

puts res
