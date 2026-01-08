n = gets.to_i

def f(n)
  n.to_s.chars.map { _1.to_i ** 2 }.sum
end

history = Set.new

while n > 1
  if history.include?(n)
    puts 'No'
    exit
  end
  history.add(n)
  n = f(n)
end

puts 'Yes'
