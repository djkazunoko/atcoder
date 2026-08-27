def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n,m,k = gsi
a = gsi

sum = 0

n.times do |i|
  sum -= a[i-m] if i >= m
  if sum + a[i] <= k
    sum += a[i]
    puts 'Yes'
  else
    a[i] = 0
    puts 'No'
  end
end
