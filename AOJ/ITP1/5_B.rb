loop do
  h,w = gets.split.map(&:to_i)

  break if h == 0 && w == 0

  h.times do |i|
    row = ""

    w.times do |j|
      if i == 0 || i == (h - 1)
        row << "#"
      else
        if j == 0 || j == (w - 1)
          row << "#"
        else
          row << "."
        end
      end
    end

    puts row
  end

  puts "\n"
end
