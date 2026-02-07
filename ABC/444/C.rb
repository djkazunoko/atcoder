n = gets.to_i
a = gets.split.map(&:to_i).sort

l = []

if n.odd?
  l << a.last
else
  if a.sum % a.last == 0
    l << a.last
  end

  l << (a.first + a.last)
end

puts l.sort*' '
