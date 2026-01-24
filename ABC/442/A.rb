s = gets.chomp.chars

cnt = 0

s.each do |c|
  if c == 'i' || c == 'j'
    cnt += 1
  end
end

p cnt
