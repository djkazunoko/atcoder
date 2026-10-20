def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n,m = gsi
s = n.times.map {gc}
t = m.times.map {gc}

votes = Array.new(n,0)

t.each do |name|
  if s.include?(name)
    votes[s.index(name)] += 1
    next
  end

  candidates = []

  s.each_with_index do |candidate, i|
    next if name.size != candidate.size

    diff = name.size.times.count { name[_1] != candidate[_1] }
    candidates << i if diff == 1
  end

  votes[candidates[0]] += 1 if candidates.size == 1
end

puts votes
