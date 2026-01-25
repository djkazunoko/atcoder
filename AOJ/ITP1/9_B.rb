loop do
  str = gets.chomp
  break if str == '-'
  m = gets.to_i
  h_ary = m.times.map { gets.to_i }

  h_ary.each do |h|
    str = str[h..-1] + str[0..(h - 1)]
  end

  puts str
end
