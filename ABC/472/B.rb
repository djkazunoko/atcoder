def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n = gi
l = gsi

ans = 1 << 60

(n-1).times do |i|
  ans = [(l[0..i].sum - l[i+1..].sum).abs, ans].min
end

puts ans
