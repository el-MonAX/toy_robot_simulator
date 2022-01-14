require 'pry'
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

    index = ToyRobotSimulator::DIRECTIONS.index(@robot.current_position.direction)
    direction_left = ToyRobotSimulator::DIRECTIONS.rotate(-1)[index]
    @robot.current_position = Position.new(@robot.current_position.x_coord,
                                           @robot.current_position.y_coord,
                                           direction_left)

    true
  end
end
