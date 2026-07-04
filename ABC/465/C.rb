def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n = gi
s = gc

ans = []
(1..n).each do |i|
  ans << i
  if s[i-1] == 'o'
    ans.reverse!
  end
end

puts ans*' '
