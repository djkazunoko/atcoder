def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n,m = gsi
f = gsi

pyn(f.uniq.size == n)
pyn(f.uniq.size == m)
