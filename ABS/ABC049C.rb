s = gets.chomp
texts = ['dream', 'dreamer', 'erase', 'eraser']
t = ''
res = 'NO'

loop do
  before_t_length = t.length

  texts.each do |text|
    s_s = s.slice(-(text.length + t.length), text.length)
    if s_s == text
      t.prepend(text)
      break
    end
  end

  after_t_length = t.length
  
  break if before_t_length == after_t_length
  if s == t
    res = 'YES'
    break
  end
end

puts res
