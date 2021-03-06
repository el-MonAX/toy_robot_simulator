# robot, current position and report
class Robot
  attr_accessor :current_position

  def initialize
    @current_position = nil
  end

  def placed_on_board?
    !current_position.nil?
  end

  def report
    return 'Not on the game board' unless placed_on_board?

    direction = current_position.direction.to_s.upcase
    "#{current_position.x_coord},#{current_position.y_coord},#{direction}"
  end
end
