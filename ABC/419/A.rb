s = gets.chomp

hash = {'red' => 'SSS', 'blue' => 'FFF', 'green' => 'MMM'}

if hash[s]
  puts hash[s]
else
  puts 'Unknown'
end
