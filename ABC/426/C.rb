n,q = gets.split.map(&:to_i)
upgrades = q.times.map { gets.split.map(&:to_i) }

pc = Array.new(n) {|i| i + 1}

upgrades.each do |xy|
  x,y = xy
  old_num = pc.select {|v| v <= x}.length
  puts old_num
  if old_num > 0
    pc[0..old_num - 1] = Array.new(old_num, y)
    pc.sort!
  end
end
