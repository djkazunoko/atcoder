n,k = gets.chomp.split.map(&:to_i)
s = gets.chomp

memo = Hash.new(0)
(0..(n-k)).each do |i|
  t = s[i, k]
  memo[t] += 1
end

x = memo.values.max

puts x
puts memo.select {|k,v| v == x}.keys.sort.join(' ')
