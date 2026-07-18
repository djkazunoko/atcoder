def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n = gi
buy = n.times.map {gets.split}
x,y = 10000,10000

n.times do |i|
  a,b,s = buy[i]
  a = a.to_i
  b = b.to_i
  y -= a

  if s == 'keep'
    x -= b
  else
    x -= a
  end
end

puts y - x
