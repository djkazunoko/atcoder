def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

h,w = gsi

di = [-1, 0, 1, 0]
dj = [0, -1, 0, 1]
h.times do |i|
  ans = []
  w.times do |j|
    cnt = 0
    4.times do |v|
      ni = i + di[v]
      nj = j + dj[v]
      next if ni < 0 || nj < 0 || ni >= h || nj >= w
      cnt += 1
    end
    ans << cnt
  end
  puts ans*' '
end
