n = gets.to_i
x = gets.split.map(&:to_f)
y = gets.split.map(&:to_f)

p1 = 0
p2 = 0
p3 = 0
pi = []
n.times do |i|
  elm = (x[i] - y[i]).abs
  p1 += elm
  p2 += elm ** 2
  p3 += elm ** 3
  pi << elm
end

p p1
p p2 ** (1 / 2.to_f)
p p3 ** (1 / 3.to_f)
p pi.max
