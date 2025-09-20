a,b,c = gets.split.map(&:to_i)

res = 'Yes'

if a != b && a != c
  res = 'No'
end

puts res
