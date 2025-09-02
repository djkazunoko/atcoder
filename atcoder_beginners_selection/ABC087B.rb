a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

res = 0
(a + 1).times do |aa|
  (b + 1).times do |bb|
    (c + 1). times do |cc|
      if (500 * aa + 100 * bb + 50 * cc) == x
        res += 1
      end
    end
  end
end

puts res
