n = gets.to_i
a = gets.split.map(&:to_i)

crr = 1
n.times do |i|
  if i >= crr
    puts i
    exit
  end
  crr = [crr, (i + a[i])].max
end

puts n
