a,b,C = gets.split.map(&:to_f)

rad = C * Math::PI / 180
S = a * b * Math.sin(rad) / 2
c = Math.sqrt((a * a) + (b * b) - (2 * a * b * Math.cos(rad)))
L = a + b + c
h = b * Math.sin(rad)

puts S
puts L
puts h
