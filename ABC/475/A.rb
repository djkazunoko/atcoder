def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

s = gc

ans = ''

s.each_char do |c|
  ans << c
  ans << 'o'
end

puts ans.delete_suffix('o')
