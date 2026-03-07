n = gets.to_i
s = gets.chomp.chars

ans = 0
two_chars = []
(0..(n - 3)).each do |i|
  ((i + 1)..(n - 2)).each do |j|
    two_char = s[i] + s[j]
    unless two_chars.include?(two_char)
      two_chars << s[i] + s[j]
      third_chars = s[(j + 1)..(-1)]
      ans += third_chars.uniq.size
    end
  end
end

puts ans
