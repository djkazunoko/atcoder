N = gets.to_i

a = []

(1..N).each do |n|
  c = 0
  (1..(Integer.sqrt(n))).each do |x|
    yy = n - x * x
    y = Integer.sqrt(yy)
    if y > x && (y.to_i * y.to_i == yy)
      c += 1
    end
  end
  a << n if c == 1
end

puts a.size
puts a.join(' ')

