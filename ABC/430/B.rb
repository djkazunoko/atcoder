n,m = gets.split.map(&:to_i)
grid = n.times.map { gets.chomp.chars }

start_points = []
(n-m+1).times do |i|
  (n-m+1).times do |j|
    start_points.push([i, j])
  end
end

texts = []
start_points.each do |start_point|
  text = ''
  i,j = start_point
  m.times do |x|
    xi = x + i
    m.times do |y|
      yj = y + j
      text += grid[xi][yj]
    end
  end
  texts.push(text)
end

p texts.uniq.length
