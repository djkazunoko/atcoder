n,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

def check(x, a, k)
  sum = a.sum {|i| x / i}
  sum >= k ? true : false
end

left = 1
right = 10**9

while (left < right)
  mid = (left + right) / 2
  ans = check(mid, a, k)
  left = mid + 1 if ans == false
  right = mid if ans == true
end

puts left
