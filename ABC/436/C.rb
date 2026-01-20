n,m = gets.split.map(&:to_i)
rc_arr = m.times.map { gets.split.map(&:to_i) }

res = 0
st = Set.new

rc_arr.each do |rc|
  r,c = rc

  ok = true
  ((r - 1)..(r + 1)).each do |x|
    ((c - 1)..(c + 1)).each do |y|
      if st.include?([x, y])
        ok = false
      end
    end
  end

  if ok
    st << [r, c]
    res += 1
  end
end

p res
