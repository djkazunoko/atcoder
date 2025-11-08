n,m,k = gets.split.map(&:to_i)
h_ary = gets.split.map(&:to_i).sort
b_ary = gets.split.map(&:to_i).sort

count = 0

h_ary.each do |h|
  idx = b_ary.bsearch_index { h <= _1 }
  if idx == nil
    break
  end
  b_ary.slice!(0..idx)
  count += 1
end

if count >= k
  puts 'Yes'
else
  puts 'No'
end
