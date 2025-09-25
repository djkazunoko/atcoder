n,x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

res = 0

l = 1
r = n

loop do
  m = (l+r) / 2
  if x < a[m-1]
    r = m - 1
  elsif x == a[m-1]
    res = m
    break
  elsif x > a[m-1]
    l = m + 1
  end
end

p res
