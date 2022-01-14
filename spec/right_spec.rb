require 'robot'
require 'game_board'
require 'toy_robot_simulator'

describe Right do
  describe '#execute' do
    let(:robot) { Robot.new }
    let(:game_board) { GameBoard.new(5, 5) }
    let(:right) { Right.new(robot) }

    it 'when facing NORTH turns WEST' do
      position = Position.new(1, 1, 'NORTH')
      Place.new(robot, game_board, position).execute
      right.execute

      expect(robot.report).to eq('1,1,EAST')
    end

    it 'when facing WEST turns SOUTH' do
      position = Position.new(1, 1, 'WEST')
      Place.new(robot, game_board, position).execute
      right.execute

      expect(robot.report).to eq('1,1,NORTH')
    end

    it 'when facing SOUTH turns EAST' do
      position = Position.new(1, 1, 'SOUTH')
      Place.new(robot, game_board, position).execute
      right.execute

      expect(robot.report).to eq('1,1,WEST')
    end

    it 'when facing EAST turns NORTH' do
      position = Position.new(1, 1, 'EAST')
      Place.new(robot, game_board, position).execute
      right.execute

      expect(robot.report).to eq('1,1,SOUTH')
    end
  end
end
