h,w,q = gets.split.map(&:to_i)

q.times do |i|
  query = gets.split.map(&:to_i)
  if query[0] == 1
    r = query[1]
    puts r * w
    h -= r
  else
    c = query[1]
    puts c * h
    w -= c
  end
end
