loop do
  a,op,b = gets.split
  a = a.to_i
  b = b.to_i

  if op == '+'
    puts a + b
  elsif op == '-'
    puts a - b
  elsif op == '*'
    puts a * b
  elsif op == '/'
    puts a / b
  else
    break
  end
end
