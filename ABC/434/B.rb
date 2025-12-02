n,m = gets.split.map(&:to_i)

sum = Array.new((m + 1), 0)
cnt = Array.new((m + 1), 0)

n.times do
  a,b = gets.split.map(&:to_i)
  sum[a] += b
  cnt[a] += 1
end

(1..m).each do |i|
  puts sum[i].to_f / cnt[i]
end
