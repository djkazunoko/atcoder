x,y = gets.split

def rev(str)
  if str.length >= 2
    str.reverse.to_i
  else
    str.to_i
  end
end

arr = [x, y]

(3..10).each do |i|
  sx = (arr[i-2].to_i + arr[i-3].to_i).to_s
  arr << rev(sx)
end

p arr[9]
