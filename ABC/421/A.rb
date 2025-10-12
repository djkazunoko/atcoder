n = gets.to_i
residents = []
n.times do
  residents << gets.chomp
end
x, y = gets.chomp.split
x = x.to_i

answer = 'No'

if residents[x-1] == y
  answer = 'Yes'
end

puts answer
