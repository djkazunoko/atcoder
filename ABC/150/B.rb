n = gets.to_i
s = gets.chomp.chars

ans = 0
(0..(n - 3)).each do |i|
  ans += 1 if s[i..(i + 2)]*'' == 'ABC'
end

p ans
