n,m,k = gets.split.map(&:to_i)
h_ary = gets.split.map(&:to_i)
b_ary = gets.split.map(&:to_i)

h_ary_light = h_ary.sort[0...k]
b_ary_heavy = b_ary.sort[-k..-1]

ans = 'Yes'
k.times do |i|  
  ans = 'No' if h_ary_light[i] > b_ary_heavy[i]
end
puts ans
