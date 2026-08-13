def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n,q = gsi
a = Array.new(n,0)
ans = 0
idxs = Set.new

q.times do
  query = gsi
  if query[0] == 1
    x = query[1] - 1 # 0インデックス
    idxs << x # Setなので重複はない
    ans ^= (a[x] ^ (a[x] + 1))
    a[x] += 1
  else
    idxs.each do |i|
      ans ^= (a[i] ^ (a[i] - 1))
      a[i] -= 1
    end
    idxs.select! { |i| a[i] > 0 }
  end

  puts ans
end
