def multiples_of_3?(num)
  (num % 3 == 0) ? true : false
end

def include_3?(num)
  return true if num % 10 == 3
  (num /= 10).zero? ? false : include_3?(num)
end

n = gets.to_i
res = ""

(1..n).each do |i|
  if multiples_of_3?(i) || include_3?(i)
    res << "#{i} "
  end
end

puts " #{res}"
