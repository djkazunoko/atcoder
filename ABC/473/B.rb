def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n = gi
a = gsi

ans = 0
a.tally.each do |k,v|
  if v.odd?
    ans += k
  end
end

puts ans
