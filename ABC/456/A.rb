def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

x = gi

ans = 'No'
(1..6).each do |a|
  (1..6).each do |b|
    (1..6).each do |c|
      if a + b + c == x
        ans = 'Yes'
      end
    end
  end
end

puts ans
