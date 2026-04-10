n = gets.to_i
ab = n.times.map { gets.split.map(&:to_i) }
m = gets.to_i
s = m.times.map { gets.chomp }

# has[a][b][char]
has = Array.new(11) { Array.new(11) { Array.new(26, false) } }
m.times do |j|
  size = s[j].size
  s[j].chars.each_with_index do |c, i|
    has[size][i + 1][c.ord - 'a'.ord] = true
  end
end

m.times do |j|
  ok = true
  ok = false if s[j].size != n
  if ok
    n.times do |i|
      a,b = ab[i]
      ok = false if !has[a][b][s[j][i].ord - 'a'.ord]
    end
  end
  puts ok ? 'Yes' : 'No'
end
