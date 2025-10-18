s,a,b,x = gets.chomp.split.map(&:to_i)

c = x / (a+b) * a
d = x % (a+b)
if d < a
  e = d * s
else
  e = a * s
end

puts (c * s) + e
