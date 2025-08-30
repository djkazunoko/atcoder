n = gets.to_i
binary = []

loop do
  if n == 1
    binary << n
    break
  end
  binary << n % 2
  n = n / 2
end

puts binary.join.reverse.rjust(10, '0')
