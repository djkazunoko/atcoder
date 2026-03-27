class Reverser
  def self.call(x)
    x.to_s.reverse.to_i
  end
end

class Sequence
  def initialize(x, y)
    @values = [x, y]
  end

  def generate(n)
    (3..n).each do |i|
      x = @values[-2] + @values[-1]
      @values << Reverser.call(x)
    end
    @values
  end
end

x,y = gets.split.map(&:to_i)
sequence = Sequence.new(x, y)
a = sequence.generate(10)
puts a[-1]
