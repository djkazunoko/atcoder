n,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

r = []

(n-1).times do |i|
  r[i] = (i == 0) ? 1 : r[i-1]
  while r[i] < n && (a[r[i]] - a[i] <= k) do
    r[i] += 1
  end
end

ans = 0
(n-1).times do |i|
  ans += (r[i] - (i + 1))
end

puts ans
