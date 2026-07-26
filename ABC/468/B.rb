def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

m,d = gsi
s = gets.chomp.chars

w = Array.new(m,0)
m.times do |i|
  if s[i] == 'G'
    if i < d
      w[0..i] = Array.new(i+1,1)
      w[i..i+d] = Array.new(d+1,1)
    elsif i + d >= m
      w[i-d..i] = Array.new(d+1,1)
      w[i..-1] = Array.new(m-i,1)
    else
      w[i-d,d*2+1] = Array.new(d*2+1,1)
    end
  end
end

puts w.count(0)
