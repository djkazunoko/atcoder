n = gets.to_i
info = n.times.map { gets.split.map(&:to_i) }

buildings = []
(1..4).each do |i|
  building = [[1, Array.new(10, 0)], [2, Array.new(10, 0)], [3, Array.new(10, 0)]]
  buildings << Hash[building]
end

college = []
(1..4).each do |i|
  college << [i, buildings[i - 1]]
end

hash = Hash[college]

info.each do |bfrv|
  b,f,r,v = bfrv
  hash[b][f][r - 1] = hash[b][f][r - 1] + v
end

(1..4).each do |i|
  (1..3).each do |j|
    puts " #{hash[i][j]*' '}"
  end
  puts "####################" if i < 4
end
