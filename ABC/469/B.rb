def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n = gi
s = gets.chomp.chars

ans = 0
n.times do |i|
  if (s[i] == 'x') && (i == 0 || (i != 0 && s[i-1] == 'x')) && (i == n-1 || (i != n-1 && s[i+1] == 'x'))
    ans += 1
  end
end

puts ans
