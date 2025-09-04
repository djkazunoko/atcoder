n = gets.to_i
cards = gets.split.map(&:to_i)

alice,bob = 0,0

cards.max(n).each_with_index do |i, idx|
  if idx.even?
    alice += i
  else
    bob += i
  end
end

p alice - bob
