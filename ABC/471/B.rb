def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n = gi
s = Array.new(n) {gets.chomp.downcase}

hash = Hash.new(0)
s.each do |str|
  hash[str] += 1
end

puts hash.values.max
