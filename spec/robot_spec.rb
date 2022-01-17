require 'robot'

describe Robot do
  let(:robot) { Robot.new }

  describe '#placed_on_board?' do
    context 'when robot is not placed' do
      it { expect(robot.placed_on_board?).to be false }
    end

    context 'when robot is placed' do
      let(:current_position) { 'placed' }

      before do
        allow(robot).to receive(:current_position).and_return('placed')
      end

      it { expect(robot.placed_on_board?).to be true }
    end
  end

  describe '#report' do
    context 'when robot is not on the game board' do
      it { expect(robot.report).to eq('Not on the game board') }
    end

    context 'when robot is on the game board' do
      let(:position) { double(x_coord: 1, y_coord: 2, direction: :west) }

      before do
        allow(robot).to receive(:current_position).and_return(position)
      end

      it { expect(robot.report).to eq('1,2,WEST') }
    end
  end
end
