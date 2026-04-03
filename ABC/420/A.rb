x,y = gets.split.map(&:to_i)

if (x + y) <= 12
  puts (x + y)
else
  puts (x + y) - 12
end
