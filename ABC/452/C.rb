n = gets.to_i
ab_ary = n.times.map { gets.split.map(&:to_i) }
m = gets.to_i
s_ary = m.times.map { gets.chomp }

s_by_size = Array.new(10) { Array.new(_1 + 1) { '' } }
m.times do |i|
  s = s_ary[i]
  (s.size).times do |j|
    s_by_size[(s.size) - 1][j] << s[j]
  end
end

t = []
n.times do |i|
  a,b = ab_ary[i]
  t << s_by_size[a - 1][b - 1]
end

m.times do |j|
  s = s_ary[j]
  if s.size != n
    puts 'No'
    next
  end

  ok = true
  n.times do |i|
    if !t[i].include?(s[i])
      ok = false
      break
    end
  end

  if ok
    puts 'Yes'
  else
    puts 'No'
  end
end
