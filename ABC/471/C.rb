def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n = gi
a = gsi

positive_nums =  a.select {_1 > 0}
negative_nums =  a.select {_1 < 0}

ans = 0
position = 0

positive_idx = 0
negative_idx = 0

loop do
  p = positive_nums[positive_idx]
  n = negative_nums[negative_idx]
  if p == nil
    ans += (negative_nums.last - position).abs
    break
  elsif n == nil
    ans += (positive_nums.last - position).abs
    break
  end

  p_d = (positive_nums[positive_idx] - position).abs
  n_d = (negative_nums[negative_idx] - position).abs
  if p_d < n_d
    ans += p_d
    position = p
    positive_idx += 1
  else
    ans += n_d
    position = n
    negative_idx += 1
  end
end

puts ans
