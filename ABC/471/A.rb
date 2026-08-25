def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

a,b = gets.split.map(&:to_f)

if a + b == 9
  puts 'Nine'
elsif a - b == 9
  puts 'Nine'
elsif a * b == 9
  puts 'Nine'
elsif a / b == 9
  puts 'Nine'
else
  puts 'Nein'
end
