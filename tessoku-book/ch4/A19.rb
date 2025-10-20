n,w = gets.split.map(&:to_i)
wv_ary = n.times.map { gets.split.map(&:to_i) }

dp = Array.new(n+1) { Array.new(w+1, -10**15) }
dp[0][0] = 0

(1..n).each do |i|
  wi,vi = wv_ary[i-1]
  (0..w).each do |j|
    if j < wi
      dp[i][j] = dp[i-1][j]
    else
      dp[i][j] = [dp[i-1][j], dp[i-1][j-wi] + vi].max
    end
  end
end

p dp.flatten.max
