n,m = gets.split.map(&:to_i)

konki = Hash.new(0)
raiki = Hash.new(0)

n.times do
  a,b = gets.split.map(&:to_i)
  konki[a] += 1
  raiki[b] += 1
end

(1..m).each do |i|
  puts raiki[i] - konki[i]
end
