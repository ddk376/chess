class HumanPlayer
  attr_reader :color
  def initialize(color)
    @color = color
  end

  def get_move
    result = []
    print " Input start piece and end position (ex:'f2,f3'): "
    input = gets.chomp
  end

  def to_s
    color
  end
end
