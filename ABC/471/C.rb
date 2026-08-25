def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n = gi
a = gsi

r =  a.select {_1 > 0}.sort
l =  a.select {_1 < 0}.sort.reverse

INF = 1 << 60
r.push(INF)
l.push(-INF)

ans = 0
pos = 0

n.times do |i|
  if pos - l.first <= r.first - pos
    ans += pos - l.first
    pos = l.first
    l.shift
  else
    ans += r.first - pos
    pos = r.first
    r.shift
  end
end

puts ans
