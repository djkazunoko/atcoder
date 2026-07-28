def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n = gi
p = gsi
q = gsi

ans = 0
(1..n).to_a.permutation.each do |ary|
  if (ary <=> p).positive? && (ary <=> q).negative?
    ans += 1
  end
end
puts ans
