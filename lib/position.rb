# robot position
class Position
  attr_reader :x_coord, :y_coord, :direction

  def initialize(x_coord, y_coord, direction)
    @x_coord = x_coord.to_i
    @y_coord = y_coord.to_i
    @direction = direction.downcase.to_sym
  end
end
