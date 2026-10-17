def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n,k,t = gsi
a = gsi

ans = 0

#手前
ans += (a[0] / k.to_f).ceil

#後
ans += ((t - (a[-1] + k)) / k.to_f).ceil

#切れ目
d = []
n.times do |i|
  if i < (n - 1)
    d << a[i+1] - a[i]
  end
end

d.each do |num|
  if num > k
    ans += (num / k.to_f).floor
  end
end

puts ans
