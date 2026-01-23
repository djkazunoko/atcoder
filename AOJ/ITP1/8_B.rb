strs = readlines(chomp: true)

strs.each do |str|
  exit if str == '0'
  p str.chars.map(&:to_i).sum
end
