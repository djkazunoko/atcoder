n = gets.to_i

a = [1]

n.times do
  y = 0
  a.each do |x|
    y += x.digits.sum
  end
  a << y
end

p a.last
