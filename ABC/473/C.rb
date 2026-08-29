def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n,k = gsi
a = gsi

ans = 0
# 各クラスの生徒数(1人以上在籍)
ary = a.tally.values.sort
# 最大生徒数
max = ary[-1]
# 最大生徒数のクラスの数を答えに足す
ans += ary.count(max)

# 全生徒が1クラスだけに所属している or 生徒数が同率1位のみの場合は以下はスキップ
if ary.size >= 2 && ary.uniq.size >= 2
  max_2 = ary.uniq[-2]
  if max - max_2 == 1
    ans += ary.count(max_2)
  end
end

puts ans
