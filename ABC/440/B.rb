n = gets.to_i
t_arr =  gets.split.map(&:to_i)

h = Hash.new(0)

n.times do |i|
  h[i+1] = t_arr[i]
end

sorted_h =  h.sort_by { |k, v| v }
ranks = sorted_h.map { _1[0] }
puts ranks[0..2].join(' ')
