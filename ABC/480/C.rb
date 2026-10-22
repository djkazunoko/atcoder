def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n,k,t = gsi
a = gsi.select { _1 < t }.sort

ans = 0
r = 0

(a + [t]).each do |x|
  if r < x
    gap = x - r
    ans += (gap + (k - 1)) / k
  end
  r = x + k
end

puts ans
