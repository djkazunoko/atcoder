h,w = gets.split.map(&:to_i)

ans = []
h.times do |i|
  line = ''
  w.times do |j|
    mark = (i == 0 || i == (h - 1) || j == 0 || j == (w - 1)) ? '#' : '.'
    line << mark
  end
  ans << line
end
puts ans
