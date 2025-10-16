x,y = gets.chomp.split

versions = {'Ocelot' => 1, 'Serval' => 2, 'Lynx' => 3}

if versions[x] >= versions[y]
  puts 'Yes'
else
  puts 'No'
end
