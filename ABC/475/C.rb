def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

def cumsum(ary)
  sum = 0
  [0] + ary.map { |e| sum += e }
end

def visited_town_count(limit, one_way, both_ways)
  one_way_cost = cumsum(one_way)
  both_ways_cost = cumsum(both_ways.map { _1 * 2 })

  p one_way_cost
  p both_ways_cost
  ans = 1

  # 往復側を最初は可能な限り多く取る
  j = both_ways_cost.size - 1

  one_way_cost.each_with_index do |cost, i|
    while j >= 0 && cost + both_ways_cost[j] > limit
      j -= 1
    end

    break if j < 0

    # i: 片道側で増えた街数
    # j: 往復側で増えた街数
    # +1: 開始地点 S
    ans = [ans, i + j + 1].max
  end

  ans
end

n, s, l = gsi
a = gsi

left = a[0...(s - 1)].reverse
right = a[(s - 1)..]

# 右を最後に進む
ans_1 = visited_town_count(l, right, left)

# 左を最後に進む
ans_2 = visited_town_count(l, left, right)

puts [ans_1, ans_2].max
