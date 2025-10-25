n = gets.to_i
a = gets.split.map(&:to_i)

count = 0
(0..(n-3)).each do |i|
  ((i+1)..(n-2)).each do |j|
    ((j+1)..(n-1)).each do |k|
      if [a[i], a[j], a[k]].uniq.length == 2
        count += 1
      end
    end
  end
end

p count
