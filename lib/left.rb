# implementation of logic for turn left
class Left
  def initialize(robot)
    @robot = robot
  end

  def execute
    puts turn_left
  end

  private

  def turn_left
    return false unless @robot.placed_on_board?

    position = @robot.current_position
    index = ToyRobotSimulator::DIRECTIONS.index(position.direction)
    direction_left = ToyRobotSimulator::DIRECTIONS.rotate(-1)[index]
    @robot.current_position = Position.new(position.x_coord,
                                           position.y_coord,
                                           direction_left)

    true
  end
end
