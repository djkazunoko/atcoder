def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

m,d = gsi
s = gets.chomp.chars

ans = 0
m.times do |i|
  ok = true
  m.times do |j|
    ok = false if s[j] == 'G' && (j - i).abs <= d
  end
  ans += 1 if ok
end
puts ans
