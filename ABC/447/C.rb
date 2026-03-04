s = gets.chomp
t = gets.chomp

def decompose(str)
  non_a = ''
  a_cnt = []
  cnt = 0

  str.each_char do |c|
    if c == 'A'
      cnt += 1
    else
      a_cnt << cnt
      cnt = 0
      non_a << c
    end
  end

  a_cnt << cnt
  [non_a, a_cnt]
end

s_non_a, s_a_cnt = decompose(s)
t_non_a, t_a_cnt = decompose(t)

if s_non_a != t_non_a
  puts -1
else
  puts s_a_cnt.zip(t_a_cnt).sum { |a, b| (a - b).abs }
end
