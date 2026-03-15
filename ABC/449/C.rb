n,l,r = gets.split.map(&:to_i)
s = gets.chomp

h = Hash.new(0)
ans = 0
n.times do |j|
  h[s[j - l]] += 1 if (j - l) >= 0
  h[s[j - r - 1]] -= 1 if (j - r - 1) >= 0
  ans += h[s[j]]
end
puts ans
