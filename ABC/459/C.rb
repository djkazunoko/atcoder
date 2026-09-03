def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n,q = gsi

h = Array.new(n,0)
c = Array.new(10 ** 6,0)
l = 0

q.times do |i|
  type,x = gsi
  if type == 1
    x -= 1
    h[x] += 1
    c[h[x]] += 1
    l += 1 if c[l+1] == n
  else
    puts c[l+x]
  end
end
