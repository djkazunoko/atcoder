n = gets.to_i
a = gets.split.map(&:to_i)

val = [(10 ** 9)]
idx = [-1]

n.times do |i|
  while val.last <= a[i] do
    val.pop
    idx.pop
  end

  puts idx.last

  val.push a[i]
  idx.push (i + 1)
end
