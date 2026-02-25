a,b,k = gets.split.map(&:to_i)

commonDivisor = []
(1..([a,b].max)).each do |i|
  if a % i == 0 && b % i == 0
    commonDivisor << i
  end
end

puts commonDivisor[-k]
