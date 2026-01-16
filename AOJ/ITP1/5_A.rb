loop do
  w,h = gets.split.map(&:to_i)
  break if w == 0 && h ==0

  w.times do
    puts "#{"#" * h}"
  end

  puts "\n"
end
