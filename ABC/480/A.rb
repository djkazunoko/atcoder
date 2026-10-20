def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

s = gc + gc
ai = s.index('A')
di = s.index('D')

pyn((ai / 2 == di / 2) || (ai % 2 == di % 2))
