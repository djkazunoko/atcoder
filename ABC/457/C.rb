def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n,k = gsi
a = n.times.map {gsi}
c = gsi

# L * C の累積和
l = []
a.map {l << _1[0]}

lc = l.zip(c).map {_1 * _2}
s = [0]
n.times do |i|
  s << s[i] + lc[i]
end

# 累積和とKを比較して、対象のaを決める
k_before_idx = s.bsearch_index { _1 > k } - 1
k_before = s[k_before_idx]
if k - k_before == 0
  # Kが一致した時はtarget_aryの末尾が答え
  puts a[k_before_idx - 1].last
  exit
else
  target_ary = a[k_before_idx]
end

# target_aryの何番目か
mod = (k - k_before) % target_ary[0]
if mod == 0
  puts target_ary.last
else
  puts target_ary[mod]
end
