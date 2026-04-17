n = gets.to_i
l = gets.split.map(&:to_i)

point = 0.5
cnt = 0

n.times do |i|
  if point.positive?
    point -= l[i]
    if point.negative?
      cnt += 1
    end
  else
    point += l[i]
    if point.positive?
      cnt += 1
    end
  end
end

p cnt
