n,x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

n.times do |i|
  if a[i] < x
    x = a[i]
    puts 1
  else
    puts 0
  end
end
