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

    index = ToyRobotSimulator::DIRECTIONS.index(@robot.current_position.direction)
    direction_right = ToyRobotSimulator::DIRECTIONS.rotate[index]
    @robot.current_position = Position.new(@robot.current_position.x_coord,
                                           @robot.current_position.y_coord,
                                           direction_right)

    true
  end
end
