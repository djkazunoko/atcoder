n,a,b = gets.split.map(&:to_i)
s = gets.chomp

res = []

(0..(n-a+1)).each do |l|
  (l..(n-1)).each do |r|
    if s[l..r].count('b') >= b
      break
    end
    if s[l..r].count('a') >= a
      res.push([(l+1), (r+1)])
    end
  end
end

puts res.length

