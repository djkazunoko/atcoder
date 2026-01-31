n,k = gets.split.map(&:to_i)

mame = n
year = 0

loop do
  break if mame >= k
  year += 1
  mame += (n + year)
end

p year
