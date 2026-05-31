def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

s = gc
n = s.length
ans = 0
n.times do |i|
  if s[i] == 'C'
    ans += [i+1, n-i].min
  end
end

puts ans
