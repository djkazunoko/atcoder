def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n = gi
a = gsi

one = 0
ten = 0
hundred = 0

n.times do |i|
  change = (a[i] / 1000.0).ceil * 1000 - a[i]
  one += change.to_s[-1].to_i
  ten += change.to_s[-2].to_i
  hundred += change.to_s[-3].to_i
end

puts "#{one} #{ten} #{hundred}"
