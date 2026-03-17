n,q = gets.split.map(&:to_i)
balls = gets.split.map(&:to_i)

h = Hash.new(0)
n.times do |i|
  h[balls[i]] += 1
end

q.times do
  k = gets.to_i
  b_ary = gets.split.map(&:to_i)

  h2 = h.dup
  k.times do |j|
    h2[balls[b_ary[j] - 1]] -= 1
  end

  h2.sort.each do |ary|
    if ary[1] != 0
      puts ary[0]
      break
    end
  end
end
