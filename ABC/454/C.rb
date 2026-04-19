n,m = gets.split.map(&:to_i)
ab_ary = m.times.map { gets.split.map(&:to_i) }

b_ary = []
hash = Hash.new { |hash, key| hash[key] = [] }
ab_ary.each do |ab|
  a,b = ab
  b_ary << b
  hash[b] << a
end

ans = [1]

b_ary.uniq.sort.each do |b|
  unless (hash[b] & ans).empty?
    ans << b
  end
end

puts ans.size
