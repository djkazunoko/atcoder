p,q = gets.split.map(&:to_i)
x,y = gets.split.map(&:to_i)

if (p <= x && x <= (p + 99)) && (q <= y && y <= (q + 99))
  puts "Yes"
else
  puts "No"
end
