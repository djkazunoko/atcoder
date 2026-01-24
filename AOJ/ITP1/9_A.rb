w = gets.chomp
text = readlines(chomp: true).map(&:split).flatten

ans = 0
text.each do |word|
  break if word == "END_OF_TEXT"
  ans += 1 if word.casecmp?(w)
end

p ans
