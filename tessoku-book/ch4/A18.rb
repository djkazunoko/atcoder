n,s = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

dp = Array.new(n+1) { Array.new(s+1, false) }
dp[0][0] = true

(1..n).each do |i|
  (0..s).each do |j|
    if j < a[i - 1]
      if dp[i - 1][j]
        dp[i][j] = true
      end
    else
      if dp[i - 1][j] || dp[i - 1][j - a[i - 1]]
        dp[i][j] = true
      end
    end
  end
end

if dp[n][s]
  puts 'Yes'
else
  puts 'No'
end
