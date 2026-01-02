n = gets.to_i
travels = n.times.map { gets.split.map(&:to_i) }

res = 'Yes'
before = [0, 0, 0]
travels.each do |travel|
  t,x,y = travel
  s = t - before[0]
  d = (before[1] - x).abs + (before[2] - y).abs
  if d > s || (d + s).odd?
    res = 'No'
    break
  end
  before = travel
end
puts res
