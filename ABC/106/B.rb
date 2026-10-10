n = gets.to_i

ans = 0
(1..n).each do |i|
  next if i.even?
  if (1..i).select { i % _1 == 0 }.size == 8
    ans += 1
  end
end
puts ans
