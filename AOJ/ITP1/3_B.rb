nums = readlines(chomp: true).map(&:to_i)

nums.each_with_index do |n, idx|
  break if n == 0
  puts "Case #{idx + 1}: #{n}"
end
