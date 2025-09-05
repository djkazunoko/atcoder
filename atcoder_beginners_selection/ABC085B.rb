n = gets
p readlines(chomp: true).map(&:to_i).uniq.count
