n,m = gets.split.map(&:to_i)

if n.even?
  if (n / 2) >= m
    puts 'Yes'
  else
    puts 'No'
  end
else
  if ((n / 2) + 1) >= m
    puts 'Yes'
  else
    puts 'No'
  end
end
