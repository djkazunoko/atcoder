x1,y1,x2,y2 = gets.split.map(&:to_i)

p Math.sqrt(((x2 - x1) ** 2) + ((y2 - y1) ** 2))
