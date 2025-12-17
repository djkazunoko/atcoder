N = gets.to_i
A = gets.split.map(&:to_i)

N.times do |i|
  if i == 0
    puts (-1)
  else
    nearest_taller = -1
    A[0...i].each_with_index do |a, idx|
      if a > A[i]
        nearest_taller = idx + 1
      end
    end
    puts nearest_taller
  end
end
