def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

x,y,l,r,a,b = gsi

ans = 0
(a..(b-1)).each do |t|
  if t >= l && t < r
    ans += x
  else
    ans += y
  end
end
puts ans
