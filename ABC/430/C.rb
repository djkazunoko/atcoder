n,a,b = gets.split.map(&:to_i)
s = gets.chomp

res = []

l = 0
r = b - 1

loop do
  if s[l..r].count('b') >= b
    l += 1
    r = l + (b - 1)
  end
  if s[l..r].count('a') >= a
    res.push([(l+1), (r+1)])
  end
  if r < (n - 1)
    r += 1 
  else
    l += 1
    r = l + (b - 1)
  end
  if l > (n-a+1)
    break
  end
end

puts res.length

