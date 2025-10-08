n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

dp = [0, a[0]]

(1..n-2).each do |i|
  x = dp[i] + a[i]
  y = dp[i-1] + b[i-1]
  dp << [x, y].min
end

ans = []
loop do
  ans << n
  break if n == 1
  if (dp[n-2] + a[n-2] == dp[n-1])
    n -= 1
  else
    n -= 2
  end
end

puts ans.length
puts ans.reverse.join(' ')
