n,a,b = gets.split.map(&:to_i)
s = gets.chomp

# 各区間に含まれる'a' , 'b' の個数の累積和
xa = [0]
xb = [0]

n.times do |i|
  xa[i+1] = s[i] == 'a' ? xa[i] + 1 : xa[i]
  xb[i+1] = s[i] == 'b' ? xb[i] + 1 : xb[i]
end

# 「[l,r] に含まれる 'a' の個数が a 個以上となる最小の r」 の配列
a_l_ary = []
(1..n).each do |l|
  a_l = (l..n).bsearch do |r|
    xa[r] - xa[l-1] >= a
  end
  a_l_ary.push a_l
end

# 「[l,r] に含まれる 'b' の個数が b 個未満となる最大の r」 の配列
b_l_ary = []
(1..n).each do |l|
  first_bad = (l..n).bsearch do |r|
    xb[r] - xb[l-1] >= b
  end
  b_l = first_bad.nil? ? n : (first_bad - 1)
  b_l_ary.push b_l
end

# 回答
ans = 0
n.times do |i|
  next if a_l_ary[i].nil?
  ans += [0, (b_l_ary[i] - a_l_ary[i] + 1)].max
end
puts ans

