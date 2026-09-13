def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n,s,l = gsi
a = gsi

def cumsum(ary)
  s = 0
  cumsum = ary.map{ |e| s += e}
end

def visitedTownCount(l, one_way, both_ways)
  ll = 0
  ans = 1
  loop do
    one_way_first = one_way[0]
    both_ways_first = both_ways[0]

    break if one_way_first.nil? && both_ways_first.nil?
    if one_way_first.nil?
      ll += both_ways_first
      both_ways.shift
    end
    if both_ways_first.nil?
      ll += one_way_first
      one_way.shift
    end
    if (one_way_first && both_ways_first) && one_way_first <= both_ways_first
      ll += one_way_first
      one_way.shift
    elsif (one_way_first && both_ways_first) && one_way_first > both_ways_first
      ll += both_ways_first
      both_ways.shift
    end

    break if ll > l
    ans += 1
  end
  ans
end

# 右を正とした場合
one_way = a[(s - 1)..]
both_ways = cumsum(a[0...(s - 1)].map{_1 * 2}.reverse)
ans_1 = visitedTownCount(l, one_way, both_ways)

# 左を正とした場合
one_way = a[0...(s - 1)].reverse
both_ways = cumsum(a[(s - 1)..].map{_1 * 2})
ans_2 = visitedTownCount(l, one_way, both_ways)

puts [ans_1, ans_2].max
