input = gets.chomp
count = 0

input.length.times do |n|
  if input[n] == "1"
    count += 1
  end
end

puts count
