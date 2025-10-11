s = gets.chomp
c = (s.length + 1) / 2 - 1
s.slice!(c)
puts s
