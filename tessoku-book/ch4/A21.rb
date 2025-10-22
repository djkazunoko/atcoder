n = gets.to_i
blocks = n.times.map { gets.split.map(&:to_i) }

blocks.prepend [0, 0]
blocks.push [0, 0]

dp = Array.new(n+1) { Array.new(n+1, 0) }
dp[1][n] = 0
len = n - 2

len.downto(0) do |i|
  (1..(n-i)).each do |l|
    r = l + i

    score1 = 0
    score1 = blocks[l-1][1] if (l <= blocks[l-1][0] && blocks[l-1][0] <= r)

    score2 = 0
    score2 = blocks[r+1][1] if (l <= blocks[r+1][0] && blocks[r+1][0] <= r)

    if (l == 1)
      dp[l][r] = dp[l][r+1] + score2
    elsif (r == n)
      dp[l][r] = dp[l-1][r] + score1
    else
      dp[l][r] = [(dp[l-1][r] + score1), (dp[l][r+1] + score2)].max
    end
  end
end

ans = 0
(1..n).each do |i|
  ans = [ans, dp[i][i]].max
end
p ans
