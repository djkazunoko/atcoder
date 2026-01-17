n,k,x = gets.split.map(&:to_i)
a_ary = gets.split.map(&:to_i)

# 量が少ないコップを酒とする
sake_ary = a_ary.sort[0...k]

t_sake = 0
cup = 0
sake_ary.each_with_index do |sake, idx|
  t_sake += sake
  cup += 1
  if t_sake > x
    break
  end
end

cup += a_ary.sort[k..].size

if t_sake < x
  cup = -1
end

puts cup
