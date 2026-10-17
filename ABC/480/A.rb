def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

s1 = gc.chars
s2 = gc.chars
ary = []
ary << s1
ary << s2

ij = []
2.times do |i|
  2.times do |j|
    if ary[i][j] == 'A'
      ij << i
      ij << j
    end
  end
end

if ij == [0,0]
  if ary[1][1] == 'D'
    puts 'No'
  else
    puts 'Yes'
  end
elsif ij == [0,1]
  if ary[1][0] == 'D'
    puts 'No'
  else
    puts 'Yes'
  end
elsif ij == [1,0]
  if ary[0][1] == 'D'
    puts 'No'
  else
    puts 'Yes'
  end
elsif ij == [1,1]
  if ary[0][0] == 'D'
    puts 'No'
  else
    puts 'Yes'
  end
end
