s = gets.chomp

h = Hash.new(0)
s.chars.each do |c|
  h[c] += 1
end

max_char = h.select {|k,v| v == h.values.max}.keys*''

puts s.delete(max_char)
