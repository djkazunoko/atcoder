n,t = gets.split.map(&:to_i)

a = gets.split.map(&:to_i)

watch = 0
open = 0
a.each do |ai|
  if open < ai
    watch += ai - open
    open = ai + 100
  end
end

if open < t
  watch += t - open
end

p watch
