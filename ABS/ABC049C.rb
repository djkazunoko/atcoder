s = gets.chomp
texts = ['dream', 'dreamer', 'erase', 'eraser']

dp = Array.new(s.length + 1, false)
dp[0] = true

(1..s.length).each do |i|
  texts.each do |text|
    if i >= text.length && dp[i - text.length] && s[(i - text.length), (text.length)] == text
      dp[i] = true
    end
  end
end

puts dp[s.length] ? 'YES' : 'NO'
