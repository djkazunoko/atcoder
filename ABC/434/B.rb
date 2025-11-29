n,m = gets.split.map(&:to_i)
ab_ary = n.times.map { gets.split.map(&:to_i) }

memo1 = Hash.new(0)
memo2 = Hash.new(0)

ab_ary.each do |ab|
  a,b = ab
  memo1[a] += b
  memo2[a] += 1
end

(1..m).each do |i|
  puts memo1[i].to_f / memo2[i].to_f
end
