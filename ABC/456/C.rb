def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

s = gc

start_i = 0
ans = 0

def f(x)
  (x * (x + 1)) / 2
end

(s.size).times do |i|
  if (i + 1) == s.size || s[i] == s[i + 1]
    ans += f((i - start_i + 1))
    start_i = i + 1
  end
end

puts ans % 998244353
