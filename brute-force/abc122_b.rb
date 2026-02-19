s = gets.chomp.chars

acgt = ["A", "C", "G", "T"]

ans = 0
current = 0
s.each do |char|
  if acgt.include?(char)
    current += 1
  else
    current = 0
  end

  ans = [ans, current].max
end

p ans
