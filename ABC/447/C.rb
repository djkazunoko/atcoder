s = gets.chomp
t = gets.chomp

ans = 0
if s.delete("A") == t.delete("A")
  s_A_cnt = []
  t_A_cnt = []

  s << '1'
  t << '1'

  s_left = 0
  s_right = 0
  s.chars.each do |c|
    if c == 'A'
      s_right += 1
    else
      s_A_cnt << s_right - s_left
      s_left = s_right
    end
  end

  t_left = 0
  t_right = 0
  t.chars.each do |c|
    if c == 'A'
      t_right += 1
    else
      t_A_cnt << t_right - t_left
      t_left = t_right
    end
  end

  s_A_cnt.size.times do |i|
    ans += (s_A_cnt[i] - t_A_cnt[i]).abs
  end
else
  ans = -1
end

puts ans
