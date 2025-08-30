n,k = gets.chomp.split.map(&:to_i);
count = 0
(1..n).each do |a|
  (1..n).each do |b|
    c = k - a - b
    if c >= 1 && c <= n
      count += 1
    end
  end
end
puts count
