n = gets.to_i

kuku = []
(1..9).each do |i|
  (1..9).each do |j|
    kuku << i * j
  end
end

if kuku.include?(n)
  puts "Yes"
else
  puts "No"
end
