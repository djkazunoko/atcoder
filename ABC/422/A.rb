i,j = gets.chomp.split('-').map(&:to_i)

if j == 8
  i += 1
  j = 1
else
  j += 1
end

puts "#{i}-#{j}"
