q = gets.to_i
queries = q.times.map {gets.split}

a = [0]
b = [0]

queries.each do |query|
  if query[0] == '1'
    c = query[1]
    a << a[-1] + (c == '(' ? 1 : -1)
    b << [b[-1], a[-1]].min
  else
    a.pop
    b.pop
  end
  puts (a[-1] == 0 && b[-1] == 0 ? 'Yes' : 'No')
end
