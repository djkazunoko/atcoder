n,m = gets.split.map(&:to_i)
s = n.times.map { gets.chomp }

pt = Array.new(n, 0)

m.times do |i|
  x = 0
  y = 0
  n.times do |j|
    if s[j][i] == '0'
      x += 1
    else
      y += 1
    end
  end

  n.times do |j|
    if s[j][i] == '0'
      pt[j] += 1 if x < y
    else
      pt[j] += 1 if x > y
    end
  end
end

ans = []
max = pt.max
n.times do |i|
  if pt[i] == max
    ans << i + 1
  end
end
puts ans.join(" ")
