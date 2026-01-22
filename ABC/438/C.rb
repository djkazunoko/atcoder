n = gets.to_i
a = gets.split.map(&:to_i)

# 4文字未満なら終了
if a.size < 4
  puts a.size
  exit
end

# 最初の4連の左端と右端のインデックスを取得
l = 0
r = 1
start = []
while r < n
  if a[l] == a[r]
    if (r - l) == 3
      start << l
      start << r
      break
    end
    r += 1
  else
    l = r
  end
end

# 4連がなければ終了
if start.empty?
  puts a.size
  exit
end

puyopuyo = 4
left, right = start
left -= 1
right += 1
# while left > 0 || right < a.size
  # 4連の左端より左には最大で3連までしか存在しない(4連の右端より右には4連以上ある可能性あり)
# end

p a.size - puyopuyo
