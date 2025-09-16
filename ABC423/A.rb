X,C = gets.split.map(&:to_i)

num = 1000
loop do
  fee = num * C / 1000
  if num + fee > X
    break
  end
  num += 1000
end

p num - 1000
