n,m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

res = 'No'
a.each do |ak|
   res = 'Yes' if ak == a.sum - m
end

puts res
