# implementation of logic for turn right
class Right
  def initialize(robot)
    @robot = robot
  end

  def execute
    puts turn_right
  end

  private

  def turn_right
    return false unless @robot.placed_on_board?

    position = @robot.current_position
    index = ToyRobotSimulator::DIRECTIONS.index(position.direction)
    direction_right = ToyRobotSimulator::DIRECTIONS.rotate[index]
    @robot.current_position = Position.new(position.x_coord, position.y_coord,
                                           direction_right)

    true
  end
end
