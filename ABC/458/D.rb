require 'sorted_containers'

def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

x = gi
q = gi
queries = q.times.map { gsi }

sortedArray = SortedContainers::SortedArray.new

sortedArray << x
queries.each do |ab|
  a,b = ab
  sortedArray << a
  sortedArray << b
  puts sortedArray[sortedArray.size / 2]
end
