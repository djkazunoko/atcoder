n = gets.to_i
a_ary = gets.split.map(&:to_i)

q = []
a_ary.each do |a|
  q << a
  if q.size >= 4 && (q[-1] == q[-2] && q[-2] == q[-3] && q[-3] == q[-4])
    q.slice!(-4..-1)
  end
end

p q.size
