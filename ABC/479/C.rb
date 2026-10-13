n,w = gets.split.map(&:to_i)
ab = n.times.map {gets.split.map(&:to_i)}

ans = 0

(0...2**n).each do |bit|
  total_a = 0
  total_b = 0

  n.times do |i|
    if bit[i] == 1
      a,b = ab[i]
      total_a += a
      total_b += b
    end
  end

  if total_b <= w
    ans = [ans, total_a].max
  end
end

puts ans
