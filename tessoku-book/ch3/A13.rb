n,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

ary = []
a.each do |i|
  a.each do |j|
    if i == j
      next
    end
    if (i - j).abs <= k
      ary.push [i, j]
    end
  end
end

puts ary.size / 2
