n,q = gets.split.map(&:to_i)
a_ary = gets.split.map(&:to_i)
query_ary = []
q.times do
  query_ary << gets.split.map(&:to_i)
end
b_ary = a_ary.concat a_ary
x = 0
query_ary.each do |query|
  if query.length == 2
    c = query.last
    x += c
  else
    l = query[1]
    r = query[2]
    y = x % n
    puts b_ary[(l - 1 + y)..(r - 1 + y)].sum
  end
end
