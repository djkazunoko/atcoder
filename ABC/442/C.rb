n,m = gets.split.map(&:to_i)
ab_ary = m.times.map { gets.split.map(&:to_i) }

K = [*1..(n - 1)].combination(3).to_a.size

h = Hash.new { |hash, key| hash[key] = [] }
ab_ary.each do |ab|
  a,b = ab
  h[a] << b
  h[b] << a
end

ans = []
(1..n).each do |i|
  if h.key?(i)
    d = n - (h[i].size + 1)
    if d < 3
      ans << 0
    else
      ans << [*1..d].combination(3).to_a.size
    end
  else
    ans << K
  end
end

puts ans.join(' ')
