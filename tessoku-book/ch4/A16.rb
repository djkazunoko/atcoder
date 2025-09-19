N = gets.to_i
A_ary = gets.split.map(&:to_i)
B_ary = gets.split.map(&:to_i)

dp = [0, A_ary[0]]

(2..N-1).each do |n|
  ans = (dp[n-1] + A_ary[n-1]) < (dp[n-2] + B_ary[n-2]) ? (dp[n-1] + A_ary[n-1]) : (dp[n-2] + B_ary[n-2])
  dp << ans
end
p dp.last
