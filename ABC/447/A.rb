n,m = gets.split.map(&:to_i)

if 2 * m - 1 <= n
  puts 'Yes'
else
  puts 'No'
end
