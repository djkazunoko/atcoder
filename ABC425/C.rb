n,q = gets.split.map(&:to_i)
a_ary = gets.split.map(&:to_i)
query_ary = []
q.times do
  query_ary << gets.split.map(&:to_i)
end

query_ary.each do |query|
  if query.length == 2
    c = query.last
    c.times do
      a_ary.push a_ary.shift
    end
  else
    l = query[1]
    r = query[2]
    puts a_ary[l-1..r-1].sum
  end
end
