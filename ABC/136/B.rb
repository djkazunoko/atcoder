n = gets.to_i

ans = 0
(1..n).each do |i|
  if i.to_s.chars.size.odd?
    ans += 1
  end
end

puts ans
