r = gets.to_f

pi = Math::PI
s = r * r * pi
l = r * 2 * pi

puts "#{sprintf("%.6f", s)} #{sprintf("%.6f", l)}"
