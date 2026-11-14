n, m = gets.split.map(&:to_i)

firsts = Array.new(n, 0)
seconds = Array.new(n) { [] }

m.times do
  a, b = gets.split.map(&:to_i)
  a -= 1
  b -= 1

  firsts[a] += 1
  seconds[a] << b
end

# 辞退前の上位2人を求める
top1, top2 = (0...n).max_by(2) { |i| [firsts[i], -i] }

n.times do |j|
  # 得票数を更新
  seconds[j].each { |b| firsts[b] += 1 }

  # 当選する可能性のある候補者だけを比較
  candidates = [top1, top2] + seconds[j]
  candidates.delete(j)

  winner = candidates.max_by { |i| [firsts[i], -i] }
  puts winner + 1

  # 得票数を元に戻す
  seconds[j].each { |b| firsts[b] -= 1 }
end
