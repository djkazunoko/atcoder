n,q = gets.split.map(&:to_i)
k = gets.split.map(&:to_i)

cards = (1..n).to_a

q.times do |i|
  cards[0, k[i]] = cards[0, k[i]].reverse.map { -_1}
end

puts cards
