loop do
  h,w = gets.split.map(&:to_i)

  break if h == 0 && w == 0

  (1..h).each do |i|
    row = ""

    (1..w).each do |j|
      if (i + j).even?
        row << "#"
      else
        row << "."
      end
    end

    puts row
  end

  puts "\n"
end

