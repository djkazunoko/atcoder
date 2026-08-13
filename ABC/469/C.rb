def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n = gi
s = gets.chomp

ans = []
n.times do |i|
  if s[i] == 'x'
    ans << i + 1
  end
end

while ans.size < n do
  ans << n
end

puts ans
