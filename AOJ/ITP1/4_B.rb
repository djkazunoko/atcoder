r = gets.to_i

pi = Math::PI
s = r * r * pi
l = r * 2 * pi

puts "#{sprintf("%.6f", s)} #{sprintf("%.6f", l)}"
