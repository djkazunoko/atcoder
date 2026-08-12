def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n = gi

(1..n).each do |i|
  if i % 3 == 0
    puts 'Fizz'
  else
    puts i
  end
end
