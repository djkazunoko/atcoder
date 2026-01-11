t = gets.to_i
t.times do
  n,w = gets.split.map(&:to_i)
  c_arr = gets.split.map(&:to_i)

  if n <= w
    puts 0
    next
  end

  sum = Array.new((2 * w), 0)
  c_arr.each_with_index do |cost, i|
    sum[i % (2 * w)] += cost
  end

  circle = sum + sum

  current_sum = circle[0..(w - 1)].sum
  ans = current_sum
  (2 * w).times do |i|
    l_before = i
    r_next = i + w
    current_sum -= circle[l_before]
    current_sum += circle[r_next]
    ans = [ans, current_sum].min
  end

  puts ans
end
