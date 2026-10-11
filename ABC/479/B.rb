n = gets.to_i
s = gets.chomp.chars

ans = 0
current = 0
n.times do |i|
  if s[i] == 'R'
    current += 1
    ans = [ans, current].max
  else
    ans = [ans, current].max
    current = 0
  end
end

puts ans
