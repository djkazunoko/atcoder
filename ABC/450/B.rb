n = gets.to_i
c_ary = (n - 1).times.map { gets.split.map(&:to_i) }

ans = 'No'
(1..n).each do |a|
  ((a + 1)..n).each do |b|
    ((b + 1)..n).each do |c|
      c_ab = c_ary[a - 1][b - 1 - a]
      c_bc = c_ary[b - 1][c - 1 - b]
      c_ac = c_ary[a - 1][c - 1 - a]
      if (c_ab + c_bc) < c_ac
        ans = 'Yes'
      end
    end
  end
end

puts ans
