def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

x = gi

def solve(x)
  (1..6).each do |a|
    (1..6).each do |b|
      (1..6).each do |c|
        return 'Yes' if a + b + c == x
      end
    end
  end
  'No'
end

puts solve(x)
