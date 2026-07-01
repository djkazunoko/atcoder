def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

s = gc

cnt = 0
substr = ''
s.each_char do |c|
  if substr[-1] == c
    cnt += (1..substr.size).sum
    substr = c
  else
    substr << c
  end
end

cnt += (1..substr.size).sum
puts cnt % 998244353
