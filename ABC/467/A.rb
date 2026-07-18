def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

require "bigdecimal"

h,w = gsi
h = BigDecimal(h)
w = BigDecimal(w)

bmi = w / (h / 100) / (h / 100)

pyn(bmi >= 25)
