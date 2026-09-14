def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n = gi
a = gsi

c1 = 0
c10 = 0
c100 = 0

n.times do |i|
  change = (a[i] / 1000.0).ceil * 1000 - a[i]
  c1 += change % 10
  c10 += change / 10 % 10
  c100 += change / 100
end

puts "#{c1} #{c10} #{c100}"
