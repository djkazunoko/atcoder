gets
nums = gets.split.map(&:to_i)

count = 0
isBreak = false

loop do
  nums.each do |num|
    if num.odd?
      isBreak = true
      break
    end
  end

  break if isBreak

  nums.map! do |num|
    num / 2
  end
  count += 1
end

p count
