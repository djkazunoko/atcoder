s = gets.chomp
p = gets.chomp

s << s

if s.include? p
  puts "Yes"
else
  puts "No"
end
