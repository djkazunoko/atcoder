X,Y,Z = gets.split.map(&:to_i)
if (Y*Z - X) / (1 - Z) >= 0
  puts 'Yes'
else
  puts 'No'
end
