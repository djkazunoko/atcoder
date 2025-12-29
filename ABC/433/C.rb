s = gets.chomp

def t?(str)
  res = false

  l = str[0..((str.length / 2) - 1)]
  r = str[(str.length / 2)..(str.length - 1)]
  if str.length.even? && l.chars.map(&:to_i).uniq.length == 1 && r.chars.map(&:to_i).uniq.length == 1 && (str[0].to_i + 1) == str[-1].to_i
    res = true
  end

  res
end

res = 0
s.length.times do |i|
  (i..(s.length - 1)).each do |j|
    if t?(s[i..j])
      res += 1
    end
  end
end
puts res
