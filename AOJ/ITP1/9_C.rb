n = gets.to_i
cards_ary = n.times.map { gets.split }

taro_p = 0
hanako_p = 0

cards_ary.each do |cards|
  taro_c, hanako_c = cards
  
  if taro_c == hanako_c
    taro_p += 1
    hanako_p += 1
  elsif cards.sort[1] == taro_c
    taro_p += 3
  else
    hanako_p += 3
  end
end

puts "#{taro_p} #{hanako_p}"
