q = gets.to_i

woods = []
q.times do
  query,h = gets.split.map(&:to_i)
  if query == 1
    woods << h
  else
    woods.reject! { _1 <= h }
  end
  puts woods.size
end
