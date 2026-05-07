def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

h,w = gsi
s = h.times.map {gc}

ans = 0
h.times do |h1|
  (h1..(h-1)).each do |h2|
    w.times do |w1|
      (w1..(w-1)).each do |w2|
        flag = true
        (h1..h2).each do |i|
          (w1..w2).each do |j|
            flag = false if s[i][j] != s[h1+h2-i][w1+w2-j]
          end
        end          
        ans += 1 if flag
      end
    end
  end
end

puts ans
