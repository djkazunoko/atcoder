n,m = gets.split.map(&:to_i)
s = gets.chomp.chars.map(&:to_i)
t = gets.chomp.chars.map(&:to_i)

ans = 1000
(n - m + 1).times do |i|
  s_sub = s[i..((m - 1) + i)]

  cnt = 0
  m.times do |j|
    x = s_sub[j]
    y = t[j]
    cnt += ((10 - y) + x) % 10
  end

  ans = [ans, cnt].min
end

p ans
