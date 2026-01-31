n,t = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

restarts = [0]
restart = 0

n.times do |i|
  restart = restarts[i] < a[i] ? (a[i] + 100) : restart
  restarts << restart
end

stop = (restarts.uniq.size - 1) * 100

if n == 0
  puts t
else
  p t - stop
end
