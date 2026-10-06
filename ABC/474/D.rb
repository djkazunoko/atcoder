n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

if a.sum > b.sum
  puts 'Yes'
  puts ([1] * n)*' '
else
  if a == b
    puts 'No'
  else
    x = []
    n.times do |i|
      x << a[i] - b[i]
    end
    if x.all? {_1 < 0}
      puts 'No'
    else
      n.times do |j|
        if x[j] > 0
          x[j] = 10 ** 18
        else
          x[j] = 1
        end
      end
      puts 'Yes'
      puts x*' '
    end
  end
end
