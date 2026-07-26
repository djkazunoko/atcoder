def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n = gi
a = gsi

ans = 0
(n-2).times do |i|
  if a[i] < a[i+1] && a[i+1] > a[i+2]
    ans +=1
  end
end

puts ans
