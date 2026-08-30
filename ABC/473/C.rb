def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n,k = gsi
a = gsi

ans = 0
member_counts = Array.new(k,0)
n.times do |i|
  member_counts[a[i] - 1] += 1
end

max = member_counts.max

member_counts.each do |member_count|
  if member_count >= max - 1
    ans += 1
  end
end

puts ans
