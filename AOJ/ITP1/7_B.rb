loop do
  n,x = gets.split.map(&:to_i)
  break if n == 0 && x == 0
  puts [*1..n].combination(3).to_a.map(&:sum).count(x)
end
