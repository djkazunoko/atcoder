n,m = gets.split.map(&:to_i)

juices = [*1..m]

n.times do
  l = gets.to_i
  x_ary = gets.split.map(&:to_i)
  unless juices.any? { x_ary.include?(_1) }
    puts 0
  end
  x_ary.each do |x|
    if juices.include?(x)
      puts x
      juices.delete(x)
      break
    end
  end
end
