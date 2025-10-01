n = gets.to_i
res = []
(1..n).each do |i|
  res << (-1)**i * i**3
end
p res.sum
