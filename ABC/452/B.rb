h,w = gets.split.map(&:to_i)

ans = []
first_last_line = '#'*w
ans << first_last_line

(h - 2).times do |i|
  line = '#'
  (w - 2).times do |j|
    line << '.'
  end
  line << '#'
  ans << line
end

ans << first_last_line
puts ans
