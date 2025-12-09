n,a,b = gets.split.map(&:to_i)
s = gets.chomp

# 各区間に含まれる'a' , 'b' の個数の累積和
xa = [0]
xb = [0]

n.times do |i|
  xa[i+1] = s[i] == 'a' ? xa[i] + 1 : xa[i]
  xb[i+1] = s[i] == 'b' ? xb[i] + 1 : xb[i]
end

rA = 1
rB = 1
ans = 0

(1..n).each do |l|
  while rA <= n && xa[rA] - xa[l-1] < a
    rA += 1
  end

  break if rA > n

  while rB <= n && xb[rB] - xb[l-1] < b
    rB += 1
  end

  ans += [0, rB - rA].max
end

puts ans
