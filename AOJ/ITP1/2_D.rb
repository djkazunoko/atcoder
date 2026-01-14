w,h,x,y,r = gets.split.map(&:to_i)

res = "Yes"
if (x + r) > w || (y + r) > h || (x - r) < 0 || (y - r) < 0
  res = "No"
end

puts res
