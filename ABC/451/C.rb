require 'sorted_containers'

q = gets.to_i

woods = SortedContainers::SortedArray.new

q.times do
  type, h = gets.split.map(&:to_i)
  if type == 1
    woods << h
  else
    while !woods.empty? && woods[0] <= h do
      woods.shift
    end
  end
  puts woods.size
end
