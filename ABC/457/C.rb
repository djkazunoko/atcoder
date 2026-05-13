def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n,k = gsi
k -= 1
a = n.times.map { gsi[1..] }
c = gsi

n.times do |i|
  if k < c[i] * a[i].size
    puts a[i][k % a[i].size]
    exit
  else
    k -= c[i] * a[i].size
  end
end
