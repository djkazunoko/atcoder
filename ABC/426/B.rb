s = gets.chomp
str1 = s[0]
str2_ary = s.chars.select {|str| str != str1}

if str2_ary.length == 1
  puts str2_ary[0]
else
  puts str1
end
