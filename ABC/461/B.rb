n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

ary = Array.new(n,0)
n.times do |i|
  ary[a[i] - 1] = i + 1
end

if ary == b
  puts 'Yes'
else
  puts 'No'
end
