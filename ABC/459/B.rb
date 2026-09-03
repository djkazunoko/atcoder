def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n = gi
s = gets.split.map(&:to_s)

ans = ''
n.times do |i|
  x = s[i][0].ord
  c = case x
      when 97..99 then 2
      when 100..102 then 3
      when 103..105 then 4
      when 106..108 then 5
      when 109..111 then 6
      when 112..115 then 7
      when 116..118 then 8
      when 119..122 then 9
      end
  ans << c.to_s
end

puts ans
