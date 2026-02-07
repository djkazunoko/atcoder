n = gets.to_i
a = gets.split.map(&:to_i).sort

l = []

if n.odd?
  l << a.last
else
  if a.sum % a.last == 0
    l << a.last
  end
  left = a[...(n/2)]
  right_rev = a[(n/2)..].reverse

  k = []
  left.size.times do |i|
    k << left[i] + right_rev[i]
  end
  if k.uniq.size == 1
    l << (a.first + a.last)
  end
end

puts l.sort*' '
