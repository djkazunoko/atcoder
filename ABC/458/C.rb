def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

s = gc.chars
ans = 0
s.each_with_index do |char, idx|
  if char == 'C'
    if idx < (s.size / 2)
      ans += (0 - idx).abs + 1
    else
      ans += (s.size - idx).abs
    end
  end
end

puts ans
