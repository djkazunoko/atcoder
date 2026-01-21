n = gets.to_i
cards = n.times.map { gets.split }

s = []
h = []
c = []
d = []

cards.each do |card|
  mark = card[0]
  rank = card[1].to_i
  if mark == 'S'
    s << rank
  elsif mark == 'H'
    h << rank
  elsif mark == 'C'
    c << rank
  elsif mark == 'D' 
    d << rank
  end
end

all_ranks = [*(1..13)]

s_missing = all_ranks.difference(s)
h_missing = all_ranks.difference(h)
c_missing = all_ranks.difference(c)
d_missing = all_ranks.difference(d)

s_missing.each do |rank|
  puts "S #{rank}"
end
h_missing.each do |rank|
  puts "H #{rank}"
end
c_missing.each do |rank|
  puts "C #{rank}"
end
d_missing.each do |rank|
  puts "D #{rank}"
end
