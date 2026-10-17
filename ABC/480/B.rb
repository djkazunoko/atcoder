def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n,m = gsi
s = n.times.map {gc}
t = m.times.map {gc}

votes = []
n.times do |i|
  vote = 0
  m.times do |j|
    if s[i] == t[j]
      vote += 1
    end
  end
  votes << vote
end

m.times do |i|
  next if s.include?(t[i])
  tmp = []
  n.times do |j|
    if t[i].length == s[j].length
      same = []
      t[i].length.times do |k|
        if t[i][k] == s[j][k]
          same << true
        else
          same << false
        end
      end
      
      if same.count(false) == 1
        tmp << s[j]
      end
    end
  end

  if tmp.size == 1
    votes[s.index(tmp[0])] += 1
  end
end

votes.each do |vote|
  puts vote
end
