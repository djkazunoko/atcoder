def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n,m = gsi
a = gsi
b = gsi

cnt_start_0 = 0
cnt_start_1 = 0

a_start_0 = a.dup
a_start_1 = a.dup

if a[0] == 0
  cnt_start_1 += 1
else
  cnt_start_0 += 1
end

# 先頭を0に固定
a_start_0[0] = 0
(n-1).times do |i|
  if (a_start_0[i] + a_start_0[i+1]) % 2 != b[i]
    a_start_0[i+1] += 1
    cnt_start_0 += 1
  end
end

# 先頭を1に固定
a_start_1[0] = 1
(n-1).times do |i|
  if (a_start_1[i] + a_start_1[i+1]) % 2 != b[i]
    a_start_1[i+1] += 1
    cnt_start_1 += 1
  end
end

puts [cnt_start_0, cnt_start_1].min
