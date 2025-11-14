n,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

ans = 0
(n-1).times do |i|
  idx = a.bsearch_index { _1 > (a[i] + k) }
  r = idx ? idx : n
  ans += r - (i+1)
end

puts ans
