q = gets.to_i
a_ary = readlines(chomp: true).map(&:to_i)

is_playing = false
v = 0

a_ary.each do |a|
  if a == 1
    v += 1
  elsif a == 2 && v >= 1
    v -= 1
  elsif a == 3
    is_playing = !is_playing
  end

  if v >= 3 && is_playing
    puts 'Yes'
  else
    puts 'No'
  end
end
