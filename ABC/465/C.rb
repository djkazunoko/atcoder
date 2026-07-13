def gi; gets.to_i; end
def gc; gets.chomp; end
def gsi; gets.split.map(&:to_i); end
def pyn(x); puts(x ? 'Yes' : 'No'); end

n = gi
s = gc

a, b = [],[]
is_reversed = false

(1..n).each do |i|
  if is_reversed
    a << i
  else
    b << i
  end

  if s[i - 1] == 'o'
    is_reversed = !is_reversed
  end
end

ans = a.reverse! + b
ans.reverse! if is_reversed
puts ans*' '
