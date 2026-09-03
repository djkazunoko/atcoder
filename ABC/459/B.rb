def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n = gi
s = gets.split.map(&:to_s)

s_to_c = '22233344455566677778889999'
ans = ''
n.times do |i|
  ans += s_to_c[s[i][0].ord - 'a'.ord]
end

puts ans
