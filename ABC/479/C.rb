n,w = gets.split.map(&:to_i)
ab = n.times.map {gets.split.map(&:to_i)}

dp = Array.new(n+1) {Array.new(w+1, -10**15)}
dp[0][0] = 0

(1..n).each do |i|
  a,b = ab[i-1]
  (0..w).each do |j|
    if j < b
      dp[i][j] = dp[i-1][j]
    else
      dp[i][j] = [dp[i-1][j], dp[i-1][j-b] + a].max
    end
  end
end

p dp.flatten.max
