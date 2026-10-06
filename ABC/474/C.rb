n,q = gets.split.map(&:to_i)
p = gets.split.map(&:to_i)
a = Array.new(q) {gets.to_i}

front = p - a 
back = a.reverse.uniq.reverse

puts (front + back)*' '
