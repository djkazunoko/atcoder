loop do
  m,f,r = gets.split.map(&:to_i)
  exit if m == -1 && f == -1 && r == -1

  ans = ''

  if (m == -1 || f == -1) || ((m + f) < 30)
    ans = 'F'
  elsif (m + f) >= 80
    ans = 'A'
  elsif (m + f) >= 65 && (m + f) < 80
    ans = 'B'
  elsif (m + f) >= 50 && (m + f) < 65
    ans = 'C'
  elsif (m + f) >= 30 && (m + f) < 50
    if r >= 50
      ans = 'C'
    else
      ans = 'D'
    end
  end

  puts ans
end
