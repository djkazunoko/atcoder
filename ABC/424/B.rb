N,M,K = gets.split.map(&:to_i)
ab_ary_ary = []
K.times do
  ab_ary_ary << gets.split.map(&:to_i)
end

accepted_ary_ary = Array.new(N) { [] }
rank = []

ab_ary_ary.each do |ab_ary|
  accepted_ary_ary[ab_ary[0] - 1] << ab_ary[1]
  accepted_ary_ary.each_with_index do |accepted_ary, idx|
    if accepted_ary.size == M
      rank << idx + 1
    end
  end
end

puts rank.uniq.join(' ')
