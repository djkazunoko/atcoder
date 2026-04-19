n,m = gets.split.map(&:to_i)
f = gets.split.map(&:to_i)

if f.uniq.size == f.size
  puts 'Yes'
else
  puts 'No'
end

if f.uniq.size == m
  puts 'Yes'
else
  puts 'No'
  
end
