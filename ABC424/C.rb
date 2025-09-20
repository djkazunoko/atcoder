N = gets.to_i
ab_ary_ary = []
N.times do
  ab_ary_ary << gets.split.map(&:to_i)
end

skills = []

ab_ary_ary.each_with_index do |ab_ary, idx|
  if ab_ary[0] == 0 && ab_ary[1] == 0
    skills << idx + 1
  end
end

ab_ary_ary.each_with_index do |ab_ary, idx|
  if ab_ary[0] == 0 && ab_ary[1] == 0
    next
  end

  if skills.include?(ab_ary[0]) || skills.include?(ab_ary[1])
    skills << idx + 1
  end
end

p skills.count
