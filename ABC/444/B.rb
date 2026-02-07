n,k = gets.split.map(&:to_i)

ans = 0
(0..n).each do |i|
  if i.to_s.chars.map(&:to_i).sum == k
    ans += 1
  end
end

puts ans
