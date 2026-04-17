t,x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

before = 0
(t + 1).times do |i|
  if i == 0
    before = a[i]
    puts "#{i} #{before}"
  end

  if (a[i] - before).abs >= x
    before = a[i]
    puts "#{i} #{before}"
  end
end
