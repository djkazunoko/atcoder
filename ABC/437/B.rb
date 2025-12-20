h,w,n = gets.split.map(&:to_i)
grid = []
h.times { grid << gets.split.map(&:to_i) }
b_ary = []
n.times { b_ary << gets.to_i }

counts = []
grid.each do |row|
  c = row.concat b_ary
  counts << c.size - c.uniq.size
end
p counts.max
