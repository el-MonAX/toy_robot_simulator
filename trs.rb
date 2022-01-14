require_relative 'lib/toy_robot_simulator'

robot = Robot.new
game_board = GameBoard.new(5, 5)
toy_robot_simulator = ToyRobotSimulator.new(robot, game_board)

puts '# Welcome to Toy Robot Simulator'
puts '# Valid commands are:'
puts "# \'PLACE X,Y,NORTH|SOUTH|EAST|WEST\', MOVE, LEFT, RIGHT, REPORT or EXIT"

loop do
  input = gets

  command = toy_robot_simulator.parse(input)
  command.execute unless command.nil?

  break if input =~ /exit/i
end
