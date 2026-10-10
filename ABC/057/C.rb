n = gets.to_i

def f(a,b)
  [a.to_s.chars.size, b.to_s.chars.size].max
end

divisors = []
(1..(Math.sqrt(n))).each do |i|
  if n % i == 0
    divisors << i

    if (n / i) != i
      divisors << (n / i)
    end
  end
end

divisors.sort!

if divisors.size.even?
  a,b = divisors[((divisors.size / 2) - 1)..(divisors.size / 2)]
else
  a = divisors[(divisors.size / 2)]
  b = divisors[(divisors.size / 2)]
end

puts f(a,b)
