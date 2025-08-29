n,k = gets.chomp.split.map(&:to_i);
red_nums = gets.chomp.split.map(&:to_i);
blue_nums = gets.chomp.split.map(&:to_i);

output = 'No'

red_nums.each do |red_num|
  blue_nums.each do |blue_num|
    if red_num + blue_num == k
      output = 'Yes'
    end
  end
end

puts output
