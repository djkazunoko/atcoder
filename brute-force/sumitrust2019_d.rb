n = gets.to_i
s = gets.chomp.chars

pins = []
n.times do |i|
  ((i + 1)..(n - 1)).each do |j|
    ((j + 1)..(n - 1)).each do |k|
      pins << s[i] + s[j] + s[k]
    end
  end
end

puts pins.uniq.size
