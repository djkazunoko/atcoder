n = gets.to_i
s = n.times.map { gets.chomp }

m = s.map(&:size).max

n.times do |i|
  k = (m - s[i].size) / 2
  dot = '.'*k
  puts "#{dot}#{s[i]}#{dot}"
end
