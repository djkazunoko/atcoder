str_ary = readlines(chomp: true)

str = str_ary.join('').downcase

h = Hash.new(0)
('a'..'z').each do |c|
  h[c] = 0
end

str.each_char do |char|
  if h.key?(char)
    h[char] += 1
  end
end

h.each do |k, v|
  puts "#{k} : #{v}"
end
