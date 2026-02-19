s = gets.chomp
n = s.size
t = "ACGT"
ans = 0

(0...n).each do |l|
  (l...n).each do |r|
    if (l..r).all? { |i| t.include?(s[i]) }
      ans = [ans, r - l + 1].max
    end
  end
end

puts ans
