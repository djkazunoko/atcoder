def solve
  n = gets.to_i
  wp = []
  n.times { wp << gets.split.map(&:to_i) }
  wp.sort_by! { |w, p| w + p}
  sum_p = 0
  wp.each do |wp|
    w,p = wp
    sum_p += p
  end
  res = 0
  n.times do |i|
    w,p = wp[i]
    res += w + p
    if sum_p < res
      puts i
      return
    end
  end
end

t = gets.to_i
t.times { solve }
