lines = readlines(chomp: true)
sum = lines.take(2).map { |line| line.split(' ') }.flatten.map(&:to_i).sum

puts "#{sum} #{lines.last}"
