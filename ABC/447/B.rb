s = gets.chomp.chars

cnt = s.tally
max = cnt.values.max
puts s.reject { cnt[_1] == max }*''
