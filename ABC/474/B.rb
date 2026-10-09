n = gets.to_i
p = gets.split.map(&:to_i)

ans = 'Yes'
(1..n).each do |i|
  if (i + 9) / 10 != (p[i-1] + 9) / 10
    ans = 'No'
    break
  end
end
puts ans
