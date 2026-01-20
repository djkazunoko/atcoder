n,m = gets.split.map(&:to_i)
rc_arr = m.times.map { gets.split.map(&:to_i) }

res = 0
occupied_cells = Set.new

rc_arr.each do |rc|
  r,c = rc
  rc_block = [[r, c], [(r + 1), c], [r, (c + 1)], [(r + 1), (c + 1)]]

  if occupied_cells.disjoint?(rc_block)
    rc_block.map { occupied_cells << _1 }
    res += 1
  end
end

p res
