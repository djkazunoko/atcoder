def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n,k = gsi
a = n.times.map {gsi}
c = gsi

b = []

n.times do |i|
  b << (a[i][1..] * c[i])
end

puts b.flatten[k-1]
