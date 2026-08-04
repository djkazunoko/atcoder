def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n = gi
s = gets.chomp.chars
s.prepend 'x'
s.push 'x'

ans = 0
(1..n).each do |i|
  if s[i] == 'x' && s[i-1] == 'x' && s[i+1] == 'x'
    ans += 1
  end
end
puts ans
