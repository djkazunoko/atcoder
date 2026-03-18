n,q = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

a_6 = a.sort[..5]
q.times do
  k = gets.to_i
  b = gets.split.map(&:to_i).map{a[_1 - 1]}.sort
  b << 0
  (k + 1).times do |i|
    if a_6[i] != b[i]
      puts a_6[i]
      break
    end
  end
end

