T = gets.to_i
ABC = $<.map{ _1.split.map(&:to_i) }

res = []
ABC.each do |abc|
  ac = []
  b = abc[1]
  ac << abc[0]
  ac << abc[2]

  amari = (b + ac.max) - ac.min

  if ac.min <= amari
    res << ac.min
    next
  end

  res << amari + ((ac.min - amari) / 2 + (ac.min - amari) % 2)

end

puts res
