def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

a = gsi
b = gsi
c = gsi

cnt = 0
a.each do |x|
  b.each do |y|
    c.each do |z|
      if [x,y,z].sort == [4,5,6]
        cnt += 1
      end
    end
  end
end

puts cnt.to_f / (6**3)
