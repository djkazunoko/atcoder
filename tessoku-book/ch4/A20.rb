s = gets.chomp
t = gets.chomp

# 左上に番兵を追加
s.prepend('1')
t.prepend('2')

dp = Array.new(s.length) { Array.new(t.length, 0) }

s.chars.each_with_index do |s_i, s_idx|
  t.chars.each_with_index do |t_i, t_idx|
    if s_i == t_i
      ary = []
      (0..(s_idx - 1)).each do |x|
        (0..(t_idx - 1)).each do |y|
          ary << dp[x][y]
        end
      end
      dp[s_idx][t_idx] = ary.max + 1
    end
  end
end

p dp.flatten.max
