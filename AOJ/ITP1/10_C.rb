loop do
  n = gets.to_i
  break if n == 0
  s = gets.split.map(&:to_f)
  m = s.sum / s.size
  aa = s.sum { |si| (si - m) ** 2 } / s.size
  puts Math.sqrt(aa)
end
