n,m = gets.split.map(&:to_i)
s = gets.chomp.chars
t = gets.chomp.chars
q = gets.to_i
w_ary = q.times.map { gets.chomp }

w_ary.each do |w_s|
  res = "Unknown"
  w_s.chars.each do |w_c|
    if s.include?(w_c) && !(t.include?(w_c))
      res = "Takahashi"
    elsif t.include?(w_c) && !(s.include?(w_c))
      res = "Aoki"
    end
  end
  puts res
end
