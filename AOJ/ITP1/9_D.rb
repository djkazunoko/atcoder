str = gets.chomp
q = gets.to_i
inst_ary = q.times.map { gets.split }

inst_ary.each do |inst|
  l = inst[1].to_i
  r = inst[2].to_i

  if inst[0] == "print"
    puts str[l..r]
  elsif inst[0] == "reverse"
    rev_str = str[l..r].reverse
    str[l..r] = rev_str
  elsif inst[0] == "replace"
    str[l..r] = inst[3]
  end
end
