n = gets.to_i
s = gets.chomp.chars

ans = 0
current = 0
n.times do |i|
  if s[i] == 'R'
    current += 1
  else
    current = 0
  end
  ans = [ans, current].max
end

puts ans
