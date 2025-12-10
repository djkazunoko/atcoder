x = gets.to_i
n = gets.to_i
w_ary = gets.split.map(&:to_i)
q = gets.to_i
p_ary = q.times.map { gets.to_i }

b = Array.new(n, false)
weight = x

p_ary.each do |p|
  p -= 1
  if b[p]
    b[p] = false
    weight -= w_ary[p]
  else
    b[p] = true
    weight += w_ary[p]
  end
  puts weight
end
