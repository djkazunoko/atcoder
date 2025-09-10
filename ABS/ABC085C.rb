N,Y = gets.split.map(&:to_i)
res = [-1, -1, -1]
max = N * 10000

res = [N, 0, 0] if max == Y

if max > Y
  (0..N).each do |x|
    (0..(N - x)).each do |y|
      z = N - x - y
      if (10000 * x) + (5000 * y) + (1000 * z) == Y
        res = [x, y, z]
      end
    end
  end
end

puts res.join(' ')
