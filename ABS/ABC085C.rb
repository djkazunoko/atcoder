N,Y = gets.split.map(&:to_i)
res = [-1, -1, -1]
max = N * 10000

res = [N, 0, 0] if max == Y

if max > Y
  x = Y / 10000
  yz = N - x
  (0..yz).each do |y|
    (0..(yz - y)).each do |z|
      if (5000 * y) + (1000 * z) == (Y % 10000)
        res = [x, y, z]
      end
    end
  end
end

puts res.join(' ')
