n,m = gets.split.map(&:to_i)

(1..n).each do |i|
  if i <= m
    puts 'OK'
  else
    puts 'Too Many Requests'
  end
end
