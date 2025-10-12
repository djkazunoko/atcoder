n,m = gets.split.map(&:to_i)
edges = m.times.map { gets.split.map(&:to_i) }

ans = m

(2**n).times do |bit|
  delete_count = 0
  edges.each do |u, v|
    if ((bit >> (u - 1)) & 1) == ((bit >> (v - 1)) & 1)
      delete_count += 1
    end
  end
  ans = [ans, delete_count].min
end

puts ans
