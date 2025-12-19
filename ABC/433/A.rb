X,Y,Z = gets.split.map(&:to_i)
if (X - Y*Z) % (Z - 1) == 0 && (X - Y*Z) >= 0
  puts 'Yes'
else
  puts 'No'
end
