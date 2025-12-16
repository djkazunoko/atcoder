N,X,Y = gets.split.map(&:to_i)
A_ary = gets.split.map(&:to_i)

m = A_ary.min
M = A_ary.max
D = Y - X

r = X * A_ary[0] % D
A_ary.each do |a|
  if (X * a % D) != r
    puts (-1)
    exit
  end
end

k = ((Y * m - r) / D).floor
P = D * k + r

if P < X * M
  puts (-1)
  exit
end

ans = 0
N.times do |i|
  yi = (P - (X * A_ary[i])) / D
  ans += yi
end
puts ans
