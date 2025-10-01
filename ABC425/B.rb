n = gets.to_i
a = gets.split.map(&:to_i)

a_n = a.select { |num| num != -1}
if a_n.length != a_n.uniq.length
  puts 'No'
  return
end

p_1 = (1..n).to_a

a_n.uniq.each do |i|
  p_1.delete(i)
end

a.each_with_index do |i, idx|
  if i == -1
    a[idx] = p_1.shift
  end
end

puts 'Yes'
puts a.join(' ')
