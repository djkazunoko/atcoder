nums = gets.chomp.chars.map(&:to_i).sort

nums.length.times do |i|
  if nums[i] > 0
    nums[0], nums[i] = nums[i], nums[0]
    break
  end
end

p nums.join.to_i
