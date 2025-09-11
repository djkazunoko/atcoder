H,W = gets.chomp.split.map(&:to_i)
arr_arr = $<.map{_1.chomp.split("")}

res = 'Yes'

H.times do |h|
  W.times do |w|
    next if arr_arr[h][w] == '.'

    count = 0 

    if (w + 1) != W && arr_arr[h][w + 1] == '#'
      count += 1
    end

    if (w - 1) >= 0 && arr_arr[h][w - 1] == '#'
      count += 1
    end

    if (h + 1) != H && arr_arr[h + 1][w] == '#'
      count += 1
    end

    if (h - 1) >= 0 && arr_arr[h - 1][w] == '#'
      count += 1
    end

    unless count == 2 || count == 4
      res = 'No'
    end
  end
end

puts res
