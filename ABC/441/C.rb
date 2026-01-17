n,k,x = gets.split.map(&:to_i)
a_ary = gets.split.map(&:to_i)

# 量が少ないコップから順に酒が入っていたとする
sake_ary = a_ary.sort[0...k]
water_ary = a_ary.sort[k..]

# 水が入っている = 酒が0ml
sake_zero_ary = Array.new(water_ary.size, 0)

sake_ary.concat sake_zero_ary

t_sake_ml = 0
cup = 0
sake_ary.sort.each do |sake_ml|
  t_sake_ml += sake_ml
  cup += 1
  if t_sake_ml >= x
    break
  end
end

if t_sake_ml < x
  cup = -1
end
puts cup
