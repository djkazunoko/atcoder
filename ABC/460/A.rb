def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n,m = gsi

ans = 0
while m > 0 do
  x = n % m
  m = x
  ans += 1
end
puts ans
