require 'rspec'
require 'game_board'
require 'robot'
require 'place'
require 'position'
require 'report'
require 'right'
require 'left'
require 'move'
require 'toy_robot_simulator'

describe ToyRobotSimulator do
  let(:robot) { Robot.new }
  let(:game_board) { GameBoard.new(5, 5) }
  let(:command) { ToyRobotSimulator.new(robot, game_board) }

  describe '#parse' do
    context 'with place command' do
      input = 'place 1, 1, north'

      it 'creates command with the correct arguments' do
        position = instance_double('Position', x_coord: 1, y_coord: 1,
                                               direction: 'north')

        expect(Position).to receive(:new)
          .with('1', '1', 'north')
          .and_return(position)
        expect(Place).to receive(:new).with(robot, game_board, position)
        command.parse(input)
      end

      it { expect(command.parse(input)).to be_a Place }
    end

    context 'with move command' do
      input = 'MOVE'

      it 'creates command with the correct arguments' do
        expect(Move).to receive(:new).with(robot, game_board)

        command.parse(input)
      end

      it { expect(command.parse(input)).to be_a Move }
    end

    context 'with left command' do
      input = 'LEFT'

      it 'creates command with the correct arguments' do
        expect(Left).to receive(:new).with(robot)

        command.parse(input)
      end

      it { expect(command.parse(input)).to be_a Left }
    end

    context 'with right command' do
      input = 'RIGHT'

      it 'creates command with the correct arguments' do
        expect(Right).to receive(:new).with(robot)

        command.parse(input)
      end

      it { expect(command.parse(input)).to be_a Right }
    end

    context 'with report command' do
      input = 'REPORT'

      it 'creates command with the correct arguments' do
        expect(Report).to receive(:new).with(robot)
        command.parse(input)
      end

      it { expect(command.parse(input)).to be_a Report }
    end
  end
end
