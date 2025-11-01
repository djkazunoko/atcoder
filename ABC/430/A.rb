a,b,c,d = gets.split.map(&:to_i)

res = 'No'

if c >= a && d <= b
  res = 'Yes'
end

puts res
