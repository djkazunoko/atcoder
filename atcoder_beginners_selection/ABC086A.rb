a,b = gets.chomp.split(" ").map(&:to_i);
str = a * b % 2 == 0 ? 'Even' : 'Odd'
puts str
