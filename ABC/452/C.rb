n = gets.to_i
ab_ary = n.times.map { gets.split.map(&:to_i) }
m = gets.to_i
s_ary = m.times.map { gets.chomp }

set = Set.new
m.times do |j|
  s = s_ary[j]
  size = s.size
  size.times do |k|
    pos = k + 1
    char = s[k]
    set << [size, pos, char]
  end
end

m.times do |j|
  s = s_ary[j]
  ok = true
  ok = false if s.size != n
  if ok
    n.times do |i|
      a,b = ab_ary[i]
      ok = false if !set.include?([a, b , s[i]])
    end
  end

  if ok
    puts 'Yes'
  else
    puts 'No'
  end
end
