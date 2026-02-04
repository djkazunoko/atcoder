n,m,l = gets.split.map(&:to_i)
a = n.times.map { gets.split.map(&:to_i) }
b = m.times.map { gets.split.map(&:to_i) }

c = Array.new(n) {Array.new(l, 0)}

n.times do |n|
  l.times do |l|
    m.times do |m|
      c[n][l] += a[n][m] * b[m][l]
    end
  end
end

c.each do |row|
  puts row*' '
end
