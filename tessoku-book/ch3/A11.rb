n,x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

p a.bsearch_index { x <= _1 } + 1
