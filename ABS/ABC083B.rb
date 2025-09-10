n,a,b = gets.split.map(&:to_i)

arr = []

(1..n).each do |i|
  x = i.digits.sum
  if x >= a && x <= b
    arr << i
  end
end

p arr.sum
