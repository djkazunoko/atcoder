def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n,k = gsi
a = gsi

sum_ary = a.tally.map { |k, v| k * v }.sort.reverse
puts((sum_ary.size <= k) ? 0 : sum_ary[k..].sum)
