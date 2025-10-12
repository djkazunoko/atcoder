n,q = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
query_ary = []
q.times do
  query_ary << gets.split.map(&:to_i)
end

b = a + a

s = Array.new(2*n + 1, 0)
(1..2*n).each do |i|
  s[i] = s[i-1] + b[i-1]
end

x = 0

query_ary.each do |query|
  if query[0] == 1
    c = query[1]
    x += c
    x %= n
  else
    l, r = query[1], query[2]
    puts s[r + x] - s[l - 1 + x]
  end
end
