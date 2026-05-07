def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

h,w = gsi
s = h.times.map {gc}

ans = []
h.times do |h1|
  (h1..(h-1)).each do |h2|
    w.times do |w1|
      (w1..(w-1)).each do |w2|
        (h1..h2).each do |i|
          (w1..w2).each do |j|
            if s[i][j] == s[h1+h2-i][w1+w2-j]
              ans << [h1,h2,w1,w2]
            end
          end
        end
      end
    end
  end
end

puts ans.uniq.size
