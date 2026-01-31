n,t = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

restarts = [0]
restart = 0

n.times do |i|
  restart = restarts[i] < a[i] ? (a[i] + 100) : restart
  restarts << restart
end

restarts.shift
restarts.uniq!
stop = (restarts.select { _1 < t}.size) * 100

if n == 0
  puts t
else
  p t - stop
end
