def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

h,w = gsi

ans = []
(1..h).each do |i|
  row = []
  (1..w).each do |j|
    cnt = 0
    (1..h).each do |x|
      (1..w).each do |y|
        if (i - x).abs + (j - y).abs == 1
          cnt += 1
        end
      end
    end
    row << cnt
  end
  ans << row
end

ans.each do |row|
  puts row*' '
end
