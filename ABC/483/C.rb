n,m = gets.split.map(&:to_i)
ab_ary = m.times.map {gets.split.map(&:to_i)}

firsts = Array.new(n,0)
seconds = Array.new(n) {Array.new(n,0)}

m.times do |i|
  a,b = ab_ary[i]
  a -= 1
  b -= 1
  
  firsts[a] += 1
  seconds[b][a] += 1
end

n.times do |j|
  copied_firsts = Marshal.load(Marshal.dump(firsts))
  selected_seconds = seconds.map { _1[j] }

  results = copied_firsts.zip(selected_seconds).map {|a,b| a + b}
  results[j] = -1
  p results.index(results.max) + 1
end
