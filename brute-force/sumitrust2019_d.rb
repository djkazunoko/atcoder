n = gets.to_i
s = gets.chomp.chars

puts s.combination(3).to_a.uniq.size
