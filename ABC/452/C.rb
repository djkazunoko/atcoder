n = gets.to_i
ab_ary = n.times.map { gets.split.map(&:to_i) }
m = gets.to_i
s_ary = m.times.map { gets.chomp }

s_by_size = Hash.new { |hash, key| hash[key] = [] }
m.times do |i|
  s_by_size[s_ary[i].size] << s_ary[i]
end

m.times do |j|
  s = s_ary[j]
  if s.size < n
    puts 'No'
    next
  end

  ok = true
  n.times do |i|
    a,b = ab_ary[i]
    if !s_by_size[a].map { _1[b - 1] }.include?(s[i])
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
