n = gets.to_i
s = gets.chomp

(n - s.size).times do
  s.prepend('o')
end

puts s
