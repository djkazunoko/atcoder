n,m = gets.split.map(&:to_i)
s = n.times.map { gets.chomp.chars }

score = Hash.new(0)
(1..n).each do |i|
  score[i] = 0
end

m.times do |i|
  vote = []
  n.times do |j|
    vote << s[j][i]
  end

  if vote.count("0") < vote.count("1")
    vote.each_with_index do |n, idx|
      if n == "0"
        score[(idx + 1)] += 1
      end
    end
  else
    vote.each_with_index do |n, idx|
      if n == "1"
        score[(idx + 1)] += 1
      end
    end
  end
end

puts score.select { |k,v| v == score.values.max }.keys.sort.join(" ")
