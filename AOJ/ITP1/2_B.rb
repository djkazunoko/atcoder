a,b,c = gets.split.map(&:to_i)

res = "No"
if a < b && b < c
  res = "Yes"
end

puts res
