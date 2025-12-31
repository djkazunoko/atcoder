s = gets.chomp

rle = []
left = 0
while left < s.size
  right = left
  right += 1 while right < s.size && s[right] == s[left]

  char = s[left]
  cnt = right - left

  rle << [char, cnt]
  left = right
end

ans = 0
(rle.size - 1).times do |i|
  if (rle[i][0].to_i + 1) == rle[i + 1][0].to_i
    c1 = rle[i][1]
    c2 = rle[i + 1][1]
    ans += [c1, c2].min
  end
end

puts ans
