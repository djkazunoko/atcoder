n = gets.to_i
a = gets.split.map(&:to_i).sort

def judge(a, l)
  a = a.dup
  while !a.empty? && a[-1] == l
    a.pop
  end

  n = a.size
  return if n.odd?
  
  (0...(n / 2)).each do |i|
    return if a[i] + a[n - 1 - i] != l
  end

  l
end

ans = []
ans << judge(a, a[-1])
ans << judge(a, (a[0] + a[-1]))

puts ans*' '
