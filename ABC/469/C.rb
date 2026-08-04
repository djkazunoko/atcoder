def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n = gi
s = gets.chomp

x_idx_ary = []
n.times do |i|
  if s[i] == 'x'
    x_idx_ary << i + 1
  end
end

x_cnt = x_idx_ary.size
(1..n).each do |i|
  if x_cnt < i
    puts n
  else
    puts x_idx_ary[i-1]
  end
end
