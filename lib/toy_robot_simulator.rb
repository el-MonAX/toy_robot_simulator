require_relative 'game_board'
require_relative 'robot'
require_relative 'place'
require_relative 'position'
require_relative 'report'
require_relative 'right'
require_relative 'left'
require_relative 'move'

# ToyRobotSimulator
class ToyRobotSimulator
  DIRECTIONS = %i[north east south west].freeze
  COMMANDS = %i[place move left right report exit].freeze

  def initialize(robot, game_board)
    @game_board = game_board
    @robot = robot
  end

  def parse(input)
    return if input.strip.empty?

    command, x_coord, y_coord, direction = input.tr(',', ' ').split
    command = command.downcase.to_sym

    execute_commands(command, x_coord, y_coord, direction)
  end

  private

  def execute_commands(command, x_coord, y_coord, direction)
    case command
    when :place
      Place.new(@robot, @game_board, Position.new(x_coord, y_coord, direction))
    when :move then Move.new(@robot, @game_board)
    when :left then Left.new(@robot)
    when :right then Right.new(@robot)
    when :report then Report.new(@robot)
    end
  end
end
