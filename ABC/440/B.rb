n = gets.to_i
t_arr =  gets.split.map(&:to_i)

ti_arr = []
n.times do |i|
  ti_arr << [t_arr[i], (i + 1)]
end
ti_arr_sorted = ti_arr.sort { |a, b| a[0] <=> b[0] }
puts "#{ti_arr_sorted[0][1]} #{ti_arr_sorted[1][1]} #{ti_arr_sorted[2][1]}"
