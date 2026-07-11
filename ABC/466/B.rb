def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n,m = gsi
b = n.times.map {gsi}

ary =  Array.new(m, -1)
n.times do |i|
  c,s = b[i]
  ary[c - 1] = [ary[c - 1], s].max
end
puts ary*' '
