n = gets.to_i
c_ary = (n - 1).times.map do |i|
  l = Array.new(i + 1, nil)
  r = gets.split.map(&:to_i)
  l + r
end

ans = 'No'
(0...n).each do |a|
  ((a + 1)...n).each do |b|
    ((b + 1)...n).each do |c|
      if (c_ary[a][b] + c_ary[b][c]) < c_ary[a][c]
        ans = 'Yes'
      end
    end
  end
end

puts ans
