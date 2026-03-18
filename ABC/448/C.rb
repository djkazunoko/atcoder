n,q = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

a_6 = a.map.with_index { |v, idx| [v, idx] }.sort[..5]
q.times do
  k = gets.to_i
  b = gets.split.map { _1.to_i - 1}.to_set

  a_6.each do |v, idx|
    unless b.include?(idx)
      puts v
      break
    end
  end
end
