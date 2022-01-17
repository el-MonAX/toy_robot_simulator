# implementation of logic for movement
class Move
  def initialize(robot, game_board)
    @robot = robot
    @game_board = game_board
  end

  def execute
    puts move
  end

  private

  def move
    return false unless @robot.placed_on_board?

    position = @robot.current_position
    movement
    result(movement, position)
  end

  def movement
    movement = nil
    case @robot.current_position.direction
    when :north then movement = { x: 0, y: 1 }
    when :east then movement = { x: 1, y: 0 }
    when :south then movement = { x: 0, y: -1 }
    when :west then movement = { x: -1, y: 0 }
    end
    movement
  end

  def result(movement, position)
    position_x = position.x_coord + movement[:x]
    position_y = position.y_coord + movement[:y]
    if @game_board.valid_position?(position_x, position_y)
      @robot.current_position = Position.new(position_x, position_y,
                                             position.direction)
      true
    else
      false
    end
  end
end
