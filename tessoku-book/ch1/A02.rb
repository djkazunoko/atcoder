n,x = gets.chomp.split.map(&:to_i);
nums = gets.chomp.split.map(&:to_i);

str = "No"

nums.each do |num|
  if num == x
    str = "Yes"
    break
  end
end

puts str
