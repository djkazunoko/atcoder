n,l,r = gets.split.map(&:to_i)
s = gets.chomp.chars

ans = 0
n.times do |i|
  (i..(n - 1)).each do |j|
    if s[i] == s[j] && l <= (j - i) && (j - i) <= r
      ans += 1
    end
  end
end

puts ans
