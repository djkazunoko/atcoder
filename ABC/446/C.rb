t = gets.to_i
t.times do
  n,d = gets.split.map(&:to_i)
  a = gets.split.map(&:to_i)
  b = gets.split.map(&:to_i)

  q = []
  n.times do |i|
    # 朝
    a[i].times { q << i }

    # 昼
    b[i].times { q.shift }

    # 夜
    while q[0] == (i - d)
      q.shift
    end
  end
  puts q.size
end
