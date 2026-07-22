def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n = gi
ans = 0
n.times do
  a,b,s = gets.split
  a = a.to_i
  b = b.to_i

  if s == 'keep'
    ans += b - a
  end
end

puts ans
