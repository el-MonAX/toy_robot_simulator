class Place
  attr_reader :game_board, :position

  def initialize(robot, game_board, position)
    @robot = robot
    @game_board = game_board
    @position = position
  end

  def execute
    raise ArgumentError, 'Incorrect coordinates' unless game_board.valid_position?(position.x_coord, position.y_coord)

    @robot.current_position = position
    puts true
  end
end
