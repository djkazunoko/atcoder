n,q = gets.split.map(&:to_i)
k = gets.split.map(&:to_i)

cards = (1..n).to_a

q.times do |i|
  cards[0...k[i]] = cards[0...k[i]].map {_1 * -1}
  cards = cards[0...k[i]].reverse + cards[k[i]..]
end

puts cards
