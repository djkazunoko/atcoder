s = gets.chomp
t = gets.chomp

dp = Array.new(s.length + 1) { Array.new(t.length + 1, 0) }

(0..(s.length)).each do |i|
  (0..(t.length)).each do |j|
    if i >= 1 && j >= 1 && s[i-1] == t[j-1]
      dp[i][j] = [dp[i-1][j], dp[i][j-1], (dp[i-1][j-1] + 1)].max
    elsif i >= 1 && j >= 1
      dp[i][j] = [dp[i-1][j], dp[i][j-1]].max
    elsif i >= 1
      dp[i][j] = dp[i-1][j]
    elsif j >= 1
      dp[i][j] = dp[i][j-1]
    end
  end
end

p dp[-1][-1]
