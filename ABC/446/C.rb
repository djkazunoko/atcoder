t = gets.to_i
t.times do
  n,d = gets.split.map(&:to_i)
  a = gets.split.map(&:to_i)
  b = gets.split.map(&:to_i)

  stock = []
  n.times do |i|
    # 朝
    stock.push a[i]

    # 昼
    bi = b[i]
    n.times do |x|
      if stock[x] >= bi
        stock[x] = stock[x] - bi
        break
      else
        bi -= stock[x]
        stock[x] = 0
      end
    end

    # 夜
    if i >= d
      stock.shift
    end
  end
  puts stock.sum
end
