nums = gets.chomp.chars.map(&:to_i).sort

if nums.include?(0)
  head = nums.bsearch { _1 > 0 }

  pos = nums.bsearch_index { _1 > 0 }
  nums.delete_at pos

  nums.unshift head
end

p nums.join.to_i
