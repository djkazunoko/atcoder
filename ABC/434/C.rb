def solve
  n,h = gets.split.map(&:to_i)
  t_ary = Array.new(n)
  l_ary = Array.new(n)
  u_ary = Array.new(n)

  n.times do |i|
    t_ary[i], l_ary[i], u_ary[i] = gets.split.map(&:to_i)
  end

  t_prev = 0
  l = h
  u = h

  n.times do |i|
    d = t_ary[i] - t_prev
    t_prev = t_ary[i]
    l -= d
    u += d

    l = [l, l_ary[i]].max
    u = [u, u_ary[i]].min

    if l > u
      puts 'No'
      return
    end
  end

  puts 'Yes'
end

t = gets.to_i
t.times { solve }
