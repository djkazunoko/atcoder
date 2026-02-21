t = gets.to_i
t.times do
  n,d = gets.split.map(&:to_i)
  a_ary = gets.split.map(&:to_i)
  b_ary = gets.split.map(&:to_i)

  fresh_eggs_lastNight = a_ary[-d..-1]
  rotten_eggs = a_ary - fresh_eggs_lastNight
  
  if rotten_eggs.sum > b_ary.sum
    puts fresh_eggs_lastNight.sum
  else
    puts a_ary.sum - b_ary.sum
  end
end
