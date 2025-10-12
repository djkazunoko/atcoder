t = gets.to_i
t.times do
  a, b, c = gets.split.map(&:to_i)
  puts [a, c, (a + b + c) / 3].min
end
