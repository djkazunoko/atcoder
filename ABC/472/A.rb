def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

s = gc.chars

s.each_with_index do |c, idx|
  if c != 'A'
    s[idx] = '.'
  end
end

puts s*''
