a,b,c,x,y = gets.split.map(&:to_i)

ans = 6000 * 10 ** 5 * 2
(0..(10 ** 5)).each do |i|
  a_cnt = [0, x - i].max
  b_cnt = [0, y - i].max

  current = ((2 * c) * i) + (a_cnt * a) + (b_cnt * b)
  ans = [ans, current].min
end

puts ans
