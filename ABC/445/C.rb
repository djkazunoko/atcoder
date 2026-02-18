n = gets.to_i
a = gets.split.map(&:to_i)

ans = Array.new(n, 0)
(n - 1).downto(0) do |i|
  if a[i] == i + 1
    ans[i] = i + 1
  else
    ans[i] = ans[a[i] - 1]
  end
end

puts ans*' '
