s = gets.chomp
texts = ['dream', 'dreamer', 'erase', 'eraser']
res = 'NO'

until s.empty?
  matched = false
  texts.each do |t|
    if s.end_with?(t)
      s = s[0...-(t.length)]
      matched = true
      break
    end
  end
  break unless matched
end

res = 'YES' if s.empty?
puts res
