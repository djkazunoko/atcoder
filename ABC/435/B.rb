n = gets.to_i
a_ary = gets.split.map(&:to_i)

res = 0
(1..n).each do |l|
  (l..n).each do |r|
    a_lr = a_ary[(l-1)..(r-1)]
    res += 1 if a_lr.select { |a| (a_lr.sum % a) == 0 }.empty?
  end
end
puts res
