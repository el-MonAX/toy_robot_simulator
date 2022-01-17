# place of the robot and checking the validity of its position
class Place
  attr_reader :game_board, :position

  def initialize(robot, game_board, position)
    @robot = robot
    @game_board = game_board
    @position = position
  end

  def execute
    raise ArgumentError, 'Incorrect coordinates' unless valid_position?

    @robot.current_position = position
    puts true
  end

  private

  def valid_position?
    game_board.valid_position?(position.x_coord, position.y_coord)
  end
end
