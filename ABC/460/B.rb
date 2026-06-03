def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

def solve
  x1,y1,r1,x2,y2,r2 = gsi
  d2 = ((x1 - x2) ** 2) + ((y1 - y2) ** 2)
  (r1 - r2) ** 2 <= d2 && d2 <= (r1 + r2) ** 2 ? true : false
end

t = gi
t.times do
  pyn(solve)
end
