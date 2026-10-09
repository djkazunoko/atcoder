n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

w = n.times.map {|i| a[i] > b[i] ? 10**18 : 1}

if w.include?(10**18)
  puts 'Yes'
  puts w*' '
else
  puts 'No'
end
