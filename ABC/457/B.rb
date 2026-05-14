def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n = gi
a = n.times.map {gsi[1..]}
x,y = gsi

p a[x-1][y-1]
